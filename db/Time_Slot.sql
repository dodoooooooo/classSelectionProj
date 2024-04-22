CREATE TABLE Time_Slot(
    TS_ID varchar(10) primary key,
    S_ID VARCHAR(8),
    Course_ID INT,
    FOREIGN KEY (S_ID) REFERENCES Student(S_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

insert into Time_Slot(TS_ID, S_ID, Course_ID) values("1312-3", "D1100001", 1312);
