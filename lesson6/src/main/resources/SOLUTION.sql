select p.*
 from PAYMENT p
 join PUBLIC.PAYMENTTYPE P2 on P2.ID = p.TYPE_ID
 where p2.NAME = 'MONTHLY';

select m.*
 from MARK m
 join PUBLIC.SUBJECT S on S.ID = m.SUBJECT_ID
 where s.NAME = 'Art';

select s.*
 from STUDENT s
 inner join PAYMENT p
    on s.ID = p.STUDENT_ID
 inner join PAYMENTTYPE pt
    on p.TYPE_ID = pt.ID
 where pt.NAME = 'WEEKLY';

select s.*
 from STUDENT s
 join PUBLIC.MARK M on s.ID = M.STUDENT_ID
 join SUBJECT su on M.SUBJECT_ID = su.ID
 where su.NAME = 'Math';

