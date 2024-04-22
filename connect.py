import yaml
import mysql.connector as mc

def load(filename="config.yml"):
    with open(filename, "r", encoding="utf-8") as config_file:
        return yaml.load(config_file, Loader=yaml.Loader)
    
import_data = load()

conn = mc.connect(host=import_data.get('database', {}).get('host', ''),
                  port=import_data.get('database', {}).get('port', ''),
                  user=import_data.get('database', {}).get('user', ''),
                  passwd=import_data.get('database', {}).get('password', ''),
                  database=import_data.get('database', {}).get('database', ''))

# 判斷是否有衝堂
def check_schedule(S_ID, C_ID, connectServer):
    try:
        cursor = connectServer.cursor()
        cursor.execute(f'SELECT `Session_Time` FROM `Course_Session` WHERE `Course_ID`={C_ID};')
        time = cursor.fetchall()

        for i in time:
            cursor.execute(f'SELECT `{"S"+str(i[0])}` FROM `Enrolled_Table` WHERE `S_ID`="{S_ID}";')
            result = cursor.fetchone()[0]
            if result:
                return True
        return False
    finally:
        connectServer.commit()
        cursor.close()

# 判斷同名課程
def same_course(S_ID, C_ID, connectServer):
    try:
        cursor = connectServer.cursor()
        cursor.execute(f"SELECT course_id FROM `courses` WHERE course_name =( SELECT `course_name` FROM `courses` WHERE `course_id` = {C_ID});")
        result = cursor.fetchall()

        # 所有同名課程的cid
        temp = ""
        for i in result:
            temp += str(i[0]) + ','
        temp = temp[:-1]

        # 遍歷課表搜尋同名課程
        for i in range(1,71):
            cursor.execute(f'SELECT * FROM `enrolled_table` WHERE `S_ID`="{S_ID}" AND {"S"+str(i)} IN ({temp});')
            result = cursor.fetchone()
            if result != None:
                return True
        return False
    finally:
        connectServer.commit()
        cursor.close()


def update_credit(SID, CID, status, connectServer):
    cursor = connectServer.cursor()
    cursor.execute(f'SELECT `Ttl_Credit` FROM `Student` WHERE `S_ID`="{SID}";')
    current_credit = cursor.fetchone()[0]

    cursor.execute(f'SELECT `Course_Credit` FROM `Courses` WHERE `Course_ID`={CID};')
    course_credit = cursor.fetchone()[0]

    if status == 1:
        new_credit = current_credit+course_credit
    else:
        new_credit = current_credit-course_credit

    cursor.execute(f'UPDATE `Student` SET `Ttl_Credit`={new_credit} where `S_ID`="{SID}";')

    connectServer.commit()
    cursor.close()
    
def update_enrolltable(SID, CID, connectServer):
    cursor = connectServer.cursor()
    cursor.execute(f'SELECT `Session_Time` FROM `Course_Session` WHERE `Course_ID`={CID}')
    time = cursor.fetchall()
    
    # 更新課表
    for i in time:
        cursor.execute(f'UPDATE `enrolled_table` SET {"S" + str(i[0])} = {CID} WHERE `S_ID` = "{SID}";')
        
    # cursor.execute(f'SELECT * FROM `enrolled_table`;')
    # print(cursor.fetchall())
    
    # 目前課堂人數
    cursor.execute(f'SELECT `cur_ppl` FROM `courses` WHERE `Course_ID`={CID}')
    new_mem = cursor.fetchone()[0] + 1
    cursor.execute(f'UPDATE `courses` SET `cur_ppl`={new_mem} WHERE `Course_ID`={CID}')
    
    update_credit(SID, CID, 1, conn)
    
    connectServer.commit()
    cursor.close()

def remove_enrolltable(SID, CID, connectServer):
    cursor = connectServer.cursor()

    cursor.execute(f'SELECT `Session_Time` FROM `Course_Session` WHERE `Course_ID`={CID};')
    time = cursor.fetchall()
    
    for i in time:
        cursor.execute(f'UPDATE `enrolled_table` SET {"S" + str(i[0])} = NULL WHERE `S_ID` = "{SID}";')
    
    # cursor.execute(f'SELECT * FROM `enrolled_table`;')
    # print(cursor.fetchall())

    cursor.execute(f'SELECT `cur_ppl` FROM `courses` WHERE `Course_ID`={CID}')
    new_mem = cursor.fetchone()[0] - 1
    cursor.execute(f'UPDATE `courses` SET `cur_ppl`={new_mem} WHERE `Course_ID`={CID}')
    
    update_credit(SID, CID, -1, conn)

    connectServer.commit()
    cursor.close()