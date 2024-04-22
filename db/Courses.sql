CREATE TABLE Courses(
    Course_ID INT primary key,
    Course_Name VARCHAR(40),
    Dept VARCHAR(20),
    Prereq INT,
    Class VARCHAR(10),
    Instructor VARCHAR(100),
    Course_Credit INT,
    Capacity INT,
    Cur_Ppl INT
);
/* TODO: 節數 日期 */
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1308, "系統程式", "資訊", 1, "二甲", "周兆龍", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1312, "系統程式", "資訊", 1, "二乙", "劉宗杰", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1316, "系統程式", "資訊", 1, "二丙", "劉宗杰", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1320, "系統程式", "資訊", 1, "二丁", "周兆龍", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1310, "機率與統計", "資訊", 1, "二甲", "劉怡芬", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1314, "機率與統計", "資訊", 1, "二乙", "游景盛", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1318, "機率與統計", "資訊", 1, "二丙", "游景盛", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1322, "機率與統計", "資訊", 1, "二丁", "劉怡芬", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1309, "資料庫系統", "資訊", 1, "二甲", "林明言", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1313, "資料庫系統", "資訊", 1, "二乙", "許懷中", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1317, "資料庫系統", "資訊", 1, "二丙", "林明言", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1321, "資料庫系統", "資訊", 1, "二丁", "葉春秀", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1111, "資料庫系統", "資訊", 1, "哈哈", "哈哈哈", 3, 5, 0); # 測試同名

insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1323, "互聯網路", "資訊", 0, NULL, "劉宗杰", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1332, "數位系統設計", "資訊", 0, NULL, "陳德生", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1328, "多媒體系統", "資訊", 0, NULL, "葉春秀", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1329, "電子商務安全", "資訊", 0, NULL, "魏國瑞", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2911, "德文（一）", "外語", 0, NULL, "游曉嵐", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2843, "韓文(一)", "外語", 0, NULL, "曲培求", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2844, "韓文(一)", "外語", 0, NULL, "梁秀慶", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2861, "日文(一)", "外語", 0, NULL, "林盈萱", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(0446, "租稅法(二)", "財稅", 1, "二乙", "黃琝琇", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(0451, "記帳相關法規", "財稅", 0, "二甲", "洪國仁", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1419, "有機化學(二)", "化工", 1, "二乙", "趙啟民", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1424, "觸媒化學", "化工", 0, "二乙", "簡彰胤", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1022, "土壤力學", "水利", 1, "二乙", "林秉賢", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(1030, "水質分析", "水利", 0, "二乙", "李漢鏗", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(0379, "財務管理", "風保", 1, "二甲", "洪麗淇", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(0388, "金融市場", "風保", 0, "二甲", "陳森松", 3, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2984, "音樂行旅 - 巡訪古典音樂大師", "通識", 0, NULL, "曾韻心", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(3044, "智慧財產之保護與實務", "通識", 0, NULL, "葉德輝", 2, 5, 0);
insert into Courses(Course_ID, Course_Name, Dept, Prereq, Class, Instructor, Course_Credit, Capacity, Cur_Ppl) values(2958, "環境教育", "通識", 0, NULL, "葉怡巖", 2, 5, 0);
select * from Courses;