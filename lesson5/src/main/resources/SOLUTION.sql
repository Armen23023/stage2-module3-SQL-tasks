Select * from PAYMENT
where AMOUNT>=500;

SELECT * from STUDENT
where year(current_date) - year(BIRTHDAY) > 20;

SELECT * from STUDENT
where GROUPNUMBER = 10 and year(current_date) - year(BIRTHDAY) < 20;

SELECT * from STUDENT
where NAME = 'Mike' or GROUPNUMBER in (4,5,6);

SELECT * from PAYMENT
where month(current_date) - month(PAYMENT_DATE) <=8;

SELECT * from STUDENT
where NAME like 'A%';

SELECT * from STUDENT
where NAME like 'Roxi' and GROUPNUMBER = 4
or NAME like 'Tallie' and GROUPNUMBER = 9;