Select s.* from STUDENT s
 join (
    SELECT STUDENT_ID, avg(MARK)
     from MARK
     group by STUDENT_ID
     having avg(MARK) > 8
 ) m on s.ID = m.STUDENT_ID;


SELECT s.ID, s.NAME
 FROM STUDENT s
         JOIN (
     SELECT STUDENT_ID
     FROM MARK
     GROUP BY STUDENT_ID
     HAVING MIN(MARK) > 7
 ) m ON s.ID = m.STUDENT_ID;


SELECT  s.ID, s.NAME from STUDENT s
 join (
     SELECT STUDENT_ID, PAYMENT_DATE
      from  PAYMENT
       group by PAYMENT_DATE
        having  count(PAYMENT_DATE) > 2
) p on s.ID = p.STUDENT_ID;