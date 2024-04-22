class Students:
    def __init__(self, S_ID, Name, Ttl_Credit, S_pwd, Dept):
        self.ID = S_ID
        self.Name = Name
        self.Ttl_Credit = Ttl_Credit
        self.Password = S_pwd
        self.Dept = Dept
        
class Courses:
    def __init__(self, Course_ID, Course_Name, Course_Dept, Course_Prereq, Course_Class, Course_Instructor, Course_Credit, Course_Capacity ,Course_Current_Ppl):
        self.ID = Course_ID
        self.Name = Course_Name
        self.Dept = Course_Dept
        self.Prereq = Course_Prereq
        self.Class = Course_Class
        self.Instructor = Course_Instructor
        self.Credit = Course_Credit
        self.Capacity = Course_Capacity
        self.Cur_ppl = Course_Current_Ppl

class Time_slot:
    def __init__(self, TS_ID, Session, Course_ID):
        self.TS_ID = TS_ID
        self.Session = Session
        self.CourseID = Course_ID
    
class Course_Session:
    def __init__(self, Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Session_Classroom):
        self.Course_Session_ID = Session_ID
        self.Course_ID = Course_ID
        self.Day = Session_Day
        self.RTime = Session_RTime
        self.Time = Session_Time
        self.Classroom = Session_Classroom
        
class EnrolledTable:
    def __init__(self, S_ID,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10
                           ,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20
                           ,S21,S22,S23,S24,S25,S26,S27,S28,S29,S30
                           ,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40
                           ,S41,S42,S43,S44,S45,S46,S47,S48,S49,S50
                           ,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60
                           ,S61,S62,S63,S64,S65,S66,S67,S68,S69,S70):
        self.S_ID = S_ID
        self.S1 =   S1;   self.S2 = S2;   self.S3 = S3;   self.S4 = S4; self.S5 =   S5
        self.S6 =   S6;   self.S7 = S7;   self.S8 = S8;   self.S9 = S9; self.S10 = S10
        self.S11 = S11; self.S12 = S12; self.S13 = S13; self.S14 = S14; self.S15 = S15
        self.S16 = S16; self.S17 = S17; self.S18 = S18; self.S19 = S19; self.S20 = S20
        self.S21 = S21; self.S22 = S22; self.S23 = S23; self.S24 = S24; self.S25 = S25
        self.S26 = S26; self.S27 = S27; self.S28 = S28; self.S29 = S29; self.S30 = S30
        self.S31 = S31; self.S32 = S32; self.S33 = S33; self.S34 = S34; self.S35 = S35
        self.S36 = S36; self.S37 = S37; self.S38 = S38; self.S39 = S39; self.S40 = S40
        self.S41 = S41; self.S42 = S42; self.S43 = S43; self.S44 = S44; self.S45 = S45
        self.S46 = S46; self.S47 = S47; self.S48 = S48; self.S49 = S49; self.S50 = S50
        self.S51 = S51; self.S52 = S52; self.S53 = S53; self.S54 = S54; self.S55 = S55
        self.S56 = S56; self.S57 = S57; self.S58 = S58; self.S59 = S59; self.S60 = S60
        self.S61 = S61; self.S62 = S62; self.S63 = S63; self.S64 = S64; self.S65 = S65
        self.S66 = S66; self.S67 = S67; self.S68 = S68; self.S69 = S69; self.S70 = S70        

def student_data(s_id, connectServer):
    cur = connectServer.cursor()
    cur.execute(f'SELECT * FROM Student WHERE S_ID="{s_id}";')
    result = cur.fetchone()
    
    if result:
        student = Students(S_ID=result[0], Name=result[1], Ttl_Credit=result[2], S_pwd=result[3], Dept=result[4])
        cur.close()
        return student
    else:
        cur.close()
        return None

def courses_data(course_id, connectServer):
    cur = connectServer.cursor()
    cur.execute(f"SELECT * FROM courses WHERE course_id={course_id}")
    result = cur.fetchone()
    
    if result:
        course = Courses(Course_ID=result[0], Course_Name=result[1], Course_Dept=result[2], Course_Prereq=result[3], Course_Class=result[4], Course_Instructor=result[5], Course_Credit=result[6], Course_Capacity=result[7], Course_Current_Ppl=result[8])
        cur.close()
        return course
    else:
        cur.close()
        return None

def time_slot_data(s_id, course_id, connectServer):
    cur = connectServer.cursor()
    cur.execute("SELECT * FROM times_slot")
    results = cur.fetchall()

    times_table_list = []
    for result in results:
        time_entry = Time_slot(TS_ID=result[0], Session=result[1], Course_ID=result[2])
        times_table_list.append(time_entry)

    cur.close()
    return times_table_list

def course_session_data(course_id, connectServer):
    cur = connectServer.cursor()
    cur.execute(f'SELECT * FROM Session WHERE Course_ID="{course_id}";')
    results = cur.fetchall()
    
    session_list = []
    for result in results:
        session = Course_Session(Session_ID=result[0], Course_ID=result[1], Session_Day=result[2], Session_RTime=result[3], Session_Time=result[4], Classroom=result[5])
        session_list.append(session)   
    return session_list

def enrolled_table_data(s_id, connectServer):
    cur = connectServer.cursor()
    cur.execute(f'SELECT * FROM Enrolledtable WHERE S_ID="{s_id}";')
    results = cur.fetchone()
    
    enrollment_list = []
    for result in results:
        enrollment = EnrolledTable(
        S_ID=result[0], 
        S1  = result[1],  S2 =  result[2],  S3  = result[3],  S4  = result[4],  S5  = result[5],
        S6  = result[6],  S7 =  result[7],  S8  = result[8],  S9  = result[9],  S10 = result[10],
        S11 = result[11], S12 = result[12], S13 = result[13], S14 = result[14], S15 = result[15],
        S16 = result[16], S17 = result[17], S18 = result[18], S19 = result[19], S20 = result[20],
        S21 = result[21], S22 = result[22], S23 = result[23], S24 = result[24], S25 = result[25],
        S26 = result[26], S27 = result[27], S28 = result[28], S29 = result[29], S30 = result[30],
        S31 = result[31], S32 = result[32], S33 = result[33], S34 = result[34], S35 = result[35],
        S36 = result[36], S37 = result[37], S38 = result[38], S39 = result[39], S40 = result[40],
        S41 = result[41], S42 = result[42], S43 = result[43], S44 = result[44], S45 = result[45],
        S46 = result[46], S47 = result[47], S48 = result[48], S49 = result[49], S50 = result[50],
        S51 = result[51], S52 = result[52], S53 = result[53], S54 = result[54], S55 = result[55],
        S56 = result[56], S57 = result[57], S58 = result[58], S59 = result[59], S60 = result[60],
        S61 = result[61], S62 = result[62], S63 = result[63], S64 = result[64], S65 = result[65],
        S66 = result[66], S67 = result[67], S68 = result[68], S69 = result[69], S70 = result[70]
    )

        enrollment_list.append(enrollment)
    
    cur.close()
    return enrollment_list
