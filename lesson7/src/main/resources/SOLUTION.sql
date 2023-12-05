select  * from MARK where MARK > 6 order by MARK DESC ;

select * from PAYMENT where AMOUNT < 300 order by  AMOUNT ;

select * from  PAYMENTTYPE  order by NAME;

select * from STUDENT order by NAME desc ;

select s.* from STUDENT s join PAYMENT p on s.ID = p.STUDENT_ID where p.AMOUNT > 1000 order by s.BIRTHDAY;
