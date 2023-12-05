SELECT max(BIRTHDAY) from STUDENT ;

select min(PAYMENT_DATE) from   PAYMENT;

select avg(MARK) from MARK where SUBJECT_ID = (select id from SUBJECT where NAME = 'Math');

select min(AMOUNT) from PAYMENT where TYPE_ID = (select ID from PAYMENTTYPE where NAME = 'WEEKLY');