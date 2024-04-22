from flask import request

def osearch(conn):
    cursor = conn.cursor()
    SC = request.form.get('Select-Code')
    SD = request.form.get('Select-Day')
    SCN = request.form.get('Select-Coursename')
    SI = request.form.get('Select-Instructorname')
    CODE = request.form.get('Code')
    DAY = request.values.get('Day')
    CNAME = request.form.get('Coursename')
    INAME = request.form.get('Instructorname')
    print(SC, SD, SCN, SI, CODE, DAY, CNAME, INAME)
    flag = 0
    cresult = []
    query = 'SELECT courses.*, Course_Session.Session_Day, Course_Session.Session_RTime, course_session.Classroom,course_session.Session_ID FROM Courses, Course_Session WHERE '
    print("before query")

    # print out course table
    if CODE and SC == "on":
        if not flag:
            print("cond1")
            flag = 1
            query += 'courses.course_id="{code}" AND course_session.course_id="{code}"'.format(code=CODE)
        else:
            print("cond1")
            query += ' AND courses.course_id="{code}" AND course_session.course_id="{code}"'.format(code=CODE)

    if DAY and SD == "on":
        if not flag:
            print("cond2")
            flag = 1
            query += 'course_session.session_day="{day}"'.format(day=DAY)
        else:
            print("cond2")
            query += ' AND course_session.session_day="{day}"'.format(day=DAY)

    if CNAME and SCN == "on":
        if not flag:
            print("cond3")
            flag = 1
            query += 'courses.course_name LIKE "%{cname}%"'.format(cname=CNAME)
        else:
            print("cond3")
            query += ' AND courses.course_name LIKE "%{cname}%"'.format(cname=CNAME)

    if INAME and SI == "on":
        if not flag:
            print("cond4")
            flag = 1
            query += 'courses.instructor LIKE "%{iname}%"'.format(iname=INAME)
        else:
            print("cond4")
            query += ' AND courses.instructor LIKE "%{iname}%"'.format(iname=INAME)

    if not ((CODE or DAY or CNAME or INAME) and (SC == "on" or SD == "on" or SCN == "on" or SI == "on")):
        query += '""'
    else:
        query += ' AND Course_Session.Course_ID=Courses.Course_ID AND Course_Session.Session_ID LIKE "%-1%" ORDER BY Course_Session.Session_ID '
    
    query += ';'
    cursor.execute(query)
    result = cursor.fetchall()
    cquery = 'SELECT courses.*, Course_Session.Session_Day, Course_Session.Session_RTime, course_session.Classroom,course_session.Session_ID FROM Courses, Course_Session WHERE'
    print(f"result: {result}\n")
    if len(result) != 0:
        for i in result:
            if i :
                if(result.index(i) == 0):
                    cquery += ' ('
                cquery += ' courses.course_id="{code}"'.format(code=i[0])

            if result.index(i) != len(result) - 1:
                cquery += ' OR'
            else:
                cquery += ') AND Course_Session.Course_ID=Courses.Course_ID;'
    else:
        cquery += '"";'
        

    print(f"cquery: {cquery}\n")
    cursor.execute(cquery)
    cresult = cursor.fetchall()
    print("cresult: ")
    print(f"{cresult}\n")
    
    return result, cresult