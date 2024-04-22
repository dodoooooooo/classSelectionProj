from init import student_data, courses_data
import yaml
import mysql.connector as mc
from connect import check_schedule, same_course, update_enrolltable, remove_enrolltable, conn

def add_course(S_ID, C_ID, conn):
    student = student_data(S_ID, conn)
    course = courses_data(C_ID, conn)
    print(student)
    # 同學只能加選本系的課程
    if student.Dept != course.Dept:
        error = '只能加選本系課程'
        return False, error
    
    # 加選後學分不可超過最高學分限制 (30 學分)
    elif student.Ttl_Credit + course.Credit > 30:
        error = '已超出學分上限'
        return False, error
    
    
    # 人數已滿的課程不可加選
    elif course.Capacity == course.Cur_ppl:
        error = '人數已滿'
        return False, error
    
    # 不可加選衝堂的課程
    # elif check_schedule(S_ID, C_ID, conn):
    #     error = '衝堂'
    #     return False, error

    # 不可加選與已選課程同名的課表
    elif same_course(S_ID, C_ID, conn):
        error = '已有同名課程'
        return False, error

    
    # 不可加選衝堂的課程
    elif check_schedule(S_ID, C_ID, conn):
        error = '衝堂'
        return False, error
    
    else:
        update_enrolltable(S_ID, C_ID, conn)
        return True, None
        
# 退選開始
def withdraw(S_ID, Course_ID):
    student = student_data(S_ID, conn)
    course = courses_data(Course_ID, conn)

    # 不可低於最低學分限制
    if student.Ttl_Credit - course.Credit < 9:
        error = '不可低於9學分'
        return False, error
    
    # 退選必修課需提出警告
    elif course.Prereq == 1:
        error = '不可退選必修課'
        return False, error
    
    else:
        remove_enrolltable(S_ID, Course_ID, conn)
        return True, None
    
SID = "D1100001"
CID = 1328

# # remove_enrolltable(SID, CID, conn)
result, error = add_course(SID, CID, conn)
print(result,error)

# result, error = withdraw(SID, CID)
# print(result,error)
