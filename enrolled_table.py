from flask import request, render_template, redirect

def replace(name):
    new = [[None for _ in range(len(name[0]))] for _ in range(len(name))]
    for i in range(len(name)):
        if name[i] is None:
            new[i] = " "
        else:
            new[i] = name[i]
    return new
    
    
def getschedlue(conn, UN):
    cursor = conn.cursor()
    query2 = 'SELECT * FROM Enrolled_Table WHERE S_ID="{un}";'.format(un=UN)
    cursor.execute(query2)
    
    result2 = cursor.fetchone()
    schedule_data = []
    
    if result2:
        change = replace(result2)
        
        for i in range(1, 70):
            if change[i] != " ":
                change[i] = str(change[i]).zfill(4)
            schedule_data.append(f"{change[i]}")
    print(schedule_data)
    return schedule_data

