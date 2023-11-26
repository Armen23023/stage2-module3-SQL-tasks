CREATE TABLE Student(id bigint PRIMARY KEY, name varchar,birthday date,Group_ int);

CREATE TABLE Subject(id bigint PRIMARY KEY ,name varchar,description varchar,grade int);

CREATE TABLE PaymentType(id bigint PRIMARY KEY ,name varchar);

create TABLE Payment(id bigint PRIMARY KEY ,type_id bigint,FOREIGN KEY (type_id) references PaymentType(id),amount decimal,student_id bigint,FOREIGN KEY (student_id) references Student(id), payment_date datetime);

create TABLE Mark(id bigint PRIMARY KEY , student_id bigint,  FOREIGN KEY  (student_id) references Student(id),   subject_id bigint,   FOREIGN KEY (subject_id) references Subject(id),    mark int);