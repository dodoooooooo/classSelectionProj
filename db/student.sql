create table Student(
    S_ID VARCHAR(8) primary key,
    Name VARCHAR(20),
    Ttl_Credit INT,
    S_pwd VARCHAR(20),
    Dept VARCHAR(20),
    Grade VARCHAR(8),
    Class VARCHAR(8)
);

insert into Student(S_ID, Name, Ttl_Credit, S_pwd, Dept, Grade, Class) values("D1149711", "do-ning", 30, "dooooning666", "資訊", 2, 2);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, Dept, Grade, Class) values("D1100001", "Std_A", 0, "123", "資訊", 2, 3);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, Dept, Grade, Class) values("D1100002", "Std_B", 0, "123", "資訊", 1, 2);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, Dept, Grade, Class) values("D1100003", "Std_C", 0, "123", "資訊", 1, 3);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, dept, Grade, Class) values("D1100004", "Std_D", 0, "123", "資訊", 2, 1);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, dept, Grade, Class) values("D1100005", "Std_E", 0, "123", "資訊", 2, 2);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, dept, Grade, Class) values("D1100006", "Std_F", 0, "123", "資訊", 2, 3);
insert into Student(S_ID, Name, Ttl_Credit, S_pwd, dept, Grade, Class) values("D1100007", "Std_G", 0, "123", "資訊", 2, 4);

select * from Student;
