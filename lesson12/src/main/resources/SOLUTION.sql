DELETE FROM student
 WHERE id IN (
    SELECT s.id
    FROM student s
             JOIN mark m ON s.id = m.student_id
             JOIN subject sub ON m.subject_id = sub.id
    WHERE sub.grade > 4
    );
DELETE FROM mark
 WHERE student_id IN (
    SELECT s.id
    FROM student s
             JOIN mark m ON s.id = m.student_id
             JOIN subject sub ON m.subject_id = sub.id
    WHERE sub.grade > 4
    );

DELETE FROM payment
 WHERE student_id IN (
    SELECT s.id
    FROM student s
             JOIN mark m ON s.id = m.student_id
             JOIN subject sub ON m.subject_id = sub.id
    WHERE sub.grade > 4
    );


DELETE FROM STUDENT
 WHERE id IN (
    SELECT s.id
    FROM student s
             JOIN mark m ON s.id = m.student_id
             JOIN subject sub ON m.subject_id = sub.id
    WHERE sub.grade < 4
    );


DELETE from PAYMENTTYPE
 WHERE NAME in(
    SELECT p.id
    from PAYMENT p
            join PUBLIC.PAYMENTTYPE P2 on P2.ID = p.TYPE_ID
    ) and NAME = 'Daily';

DELETE FROM MARK
 WHERE MARK <7;