insert into STUDENT(NAME, BIRTHDAY, GROUPNUMBER)
values ('John', '2000-01-01', 1),
       ('Chris', '2000-02-01', 1),
       ('Carl', '2000-03-01', 1),
       ('Jacob', '2002-01-01', 5),
       ('Chris', '2002-01-01', 5),
       ('Gaga', '2002-01-01', 5),
       ('Oliver', '2001-01-01', 2),
       ('James', '2001-02-01', 2),
       ('Lucas', '2001-03-01', 2),
       ('Henry', '2001-04-01', 2),
       ('Jacob', '2002-01-01', 3),
       ('Logan', '2002-02-01', 3),
       ('Logan', '2002-01-01', 4),
       ('Logan', '2002-01-01', 4);



insert into SUBJECT(name, grade)
values ('Art ', '1'),
       ('Music', '1');
insert into SUBJECT(name, grade)
values ('Geography ', '2'),
       ('History ', '2');
insert into SUBJECT(name, grade)
values ('PE  ', '3'),
       ('Math ', '3');
insert into SUBJECT(name, grade)
values ('Science   ', '4'),
       ('IT  ', '4');
insert into SUBJECT(name, grade)
values ('Physic', '5'),
       ('Algorithms', '5');

insert into PAYMENTTYPE(NAME)
values ('DAILY'),
       ('WEEKLY'),
       ('MONTHLY');

insert into PAYMENT(type_id, amount, PAYMENT_DATE, student_id)
values ((SELECT max(ID) from PAYMENTTYPE where NAME = 'WEEKLY'), 100, '2023-01-01',
        (select max(ID) from STUDENT where NAME = 'John')),
       ((SELECT max(ID) from PAYMENTTYPE where NAME = 'MONTHLY'), 100, '2023-01-01',
        (select max(ID) from STUDENT where NAME = 'Oliver')),
       ((SELECT max(ID) from PAYMENTTYPE where NAME = 'WEEKLY'), 400, '2023-04-05',
        (select max(ID) from STUDENT where NAME = 'Henry')),
       ((SELECT max(ID) from PAYMENTTYPE where NAME = 'DAILY'), 150, '2022-07-28',
        (select max(ID) from STUDENT where NAME = 'James')),
       ((SELECT max(ID) from PAYMENTTYPE where NAME = 'MONTHLY'), 300, '2023-01-30',
        (select max(ID) from STUDENT where NAME = 'Jacob')),
       ((SELECT max(ID) from PAYMENTTYPE where NAME = 'DAILY'), 250, '2022-03-01',
        (select max(ID) from STUDENT where NAME = 'Gaga'));

insert into MARK(student_id, subject_id, mark)
values ((SELECT ID from STUDENT where NAME = 'Chris' limit 1), (select ID from SUBJECT where NAME = 'Art'), 8),
       ((SELECT ID from STUDENT where NAME = 'Oliver' limit 1), (select ID from SUBJECT where NAME = 'History'), 5),
       ((SELECT ID from STUDENT where NAME = 'James' limit 1), (select ID from SUBJECT where NAME = 'Geography'), 9),
       ((SELECT ID from STUDENT where NAME = 'Jacob' limit 1), (select ID from SUBJECT where NAME = 'Math'), 4),
       ((SELECT ID from STUDENT where NAME = 'Logan' limit 1), (select ID from SUBJECT where NAME = 'PE'), 9),
       ((SELECT ID from STUDENT where NAME = 'Gaga' limit 1), (select ID from SUBJECT where NAME = 'IT'), 8),
       ((SELECT ID from STUDENT where NAME = 'Chris' limit 1), (select ID from SUBJECT where NAME = 'Music'), 9)