CREATE TABLE Course_Session (
    Session_ID VARCHAR(8) primary key,
    Course_ID INT,
    Session_Day VARCHAR(20),
    Session_RTime INT,
    Session_Time INT,
    Classroom VARCHAR(20),
    foreign key (Course_ID) references Courses(Course_ID)
);

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1308-1", 1308, "Monday", 8, 8, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1308-2", 1308, "Monday", 9, 9, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1308-3", 1308, "Wednesday", 4, 32, "資電103");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1312-1", 1312, "Monday", 3, 3, "資電402");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1312-2", 1312, "Monday", 4, 4, "資電402");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1312-3", 1312, "Wednesday", 4, 32, "資電402");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1316-1", 1316, "Monday", 6, 6, "資電B03");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1316-2", 1316, "Monday", 7, 7, "資電B03");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1316-3", 1316, "Wednesday", 3, 31, "資電402");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1320-1", 1320, "Monday", 3, 3, "資電B03");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1320-2", 1320, "Monday", 4, 4, "資電B03");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1320-3", 1320, "Wednesday", 3, 31, "資電103");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1310-1", 1310, "Monday", 3, 3, "商學408");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1310-2", 1310, "Monday", 4, 4, "商學408");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1310-3", 1310, "Tuesday", 3, 17, "資電B03");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1314-1", 1314, "Monday", 6, 6, "科航207");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1314-2", 1314, "Monday", 7, 7, "科航207");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1314-3", 1314, "Tuesday", 3, 17, "資電504");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1318-1", 1318, "Monday", 8, 8, "資電306");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1318-2", 1318, "Monday", 9, 9, "資電306");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1318-3", 1318, "Tuesday", 3, 17, "資電504");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1322-1", 1322, "Monday", 6, 6, "資電404");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1322-2", 1322, "Monday", 7, 7, "資電404");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1322-3", 1322, "Friday", 2, 58, "資電403");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1309-1", 1309, "Monday", 6, 6, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1309-2", 1309, "Monday", 7, 7, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1309-3", 1309, "Tuesday", 3, 17, "資電103");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1313-1", 1313, "Monday", 8, 8, "土水304");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1313-2", 1313, "Monday", 9, 9, "土水304");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1313-3", 1313, "Tuesday", 4, 18, "資電512");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1317-1", 1317, "Monday", 3, 3, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1317-2", 1317, "Monday", 4, 4, "資電103");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1317-3", 1317, "Tuesday", 4, 18, "資電103");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1321-1", 1321, "Monday", 8, 8, "資電404");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1321-2", 1321, "Monday", 9, 9, "資電404");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1321-3", 1321, "Friday", 6, 62, "資電404");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1323-1", 1323, "Wednesday", 6, 34, "資電234");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1323-2", 1323, "Wednesday", 7, 35, "資電234");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1323-3", 1323, "Wednesday", 8, 36, "資電234");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1332-1", 1332, "Tuesday", 6, 20, "資電107");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1332-2", 1332, "Tuesday", 7, 21, "資電107");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1332-3", 1332, "Thursday", 8, 50, "資電125");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1328-1", 1328, "Tuesday", 6, 20, "資電234");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1328-2", 1328, "Tuesday", 7, 21, "資電234");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1328-3", 1328, "Tuesday", 8, 22, "資電234");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1329-1", 1329, "Monday", 11, 11, "資電102");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1329-2", 1329, "Monday", 12, 12, "資電102");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1329-3", 1329, "Monday", 13, 13, "資電102");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2911-1", 2911, "Friday", 6, 62, "語文202");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2911-2", 2911, "Friday", 7, 63, "語文202");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2843-1", 2843, "Friday", 6, 62, "忠勤303");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2843-2", 2843, "Friday", 7, 63, "忠勤303");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2844-1", 2844, "Monday", 1, 1, "忠勤210");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2844-2", 2844, "Monday", 2, 2, "忠勤210");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2861-1", 2861, "Thursday", 3, 45, "資電107");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2861-2", 2861, "Thursday", 4, 46, "資電107");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0446-1", 0446, "Wednesday", 7, 35, "忠勤307");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0446-2", 0446, "Wednesday", 8, 36, "忠勤307");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0446-3", 0446, "Wednesday", 9, 37, "忠勤307");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0451-1", 0451, "Wednesday", 2, 30, "忠勤B05");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0451-2", 0451, "Wednesday", 3, 31, "忠勤B05");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0451-3", 0451, "Wednesday", 4, 32, "忠勤B05");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1419-1", 1419, "Thursday", 6, 48, "學思519");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1419-2", 1419, "Thursday", 7, 49, "學思519");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1419-3", 1419, "Thursday", 8, 50, "學思519");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1424-1", 1424, "Monday", 6, 6, "學思319");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1424-2", 1424, "Monday", 7, 7, "學思319");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1424-3", 1424, "Monday", 8, 8, "學思319");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1022-1", 1022, "Thursday", 3, 45, "語文203");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1022-2", 1022, "Thursday", 4, 46, "語文203");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("1030-1", 1030, "Monday", 8, 8, "土水509");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0379-1", 0379, "Tuesday", 6, 20, "商學205");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0379-2", 0379, "Tuesday", 7, 21, "商學205");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0379-3", 0379, "Tuesday", 8, 22, "商學205");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0388-1", 0388, "Thursday", 6, 20, "商學408");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0388-2", 0388, "Thursday", 7, 21, "商學408");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("0388-3", 0388, "Thursday", 8, 22, "商學408");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2984-1", 2984, "Wednesday", 6, 34, "人言507");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2984-2", 2984, "Wednesday", 7, 35, "人言507");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("3044-1", 3044, "Thursday", 1, 43, "人言405");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("3044-2", 3044, "Thursday", 2, 44, "人言405");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2958-1", 2958, "Wednesday", 8, 36, "學思219");
insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("2958-2", 2958, "Wednesday", 9, 37, "學思219");

insert into Course_Session(Session_ID, Course_ID, Session_Day, Session_RTime, Session_Time, Classroom) values("001", 1111, "Thursday", 6, 48, "學思219");

