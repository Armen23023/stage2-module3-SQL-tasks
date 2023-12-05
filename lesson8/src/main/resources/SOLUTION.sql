SELECT min(BIRTHDAY) from STUDENT;

select min(PAYMENT_DATE) from   PAYMENT;

select avg(MARK) from MARK join SUBJECT s on MARK.SUBJECT_ID = s.ID;

select min(AMOUNT) from PAYMENT join PAYMENTTYPE pt  on pt.ID = PAYMENT.ID where pt.NAME = 'WEEKLY';