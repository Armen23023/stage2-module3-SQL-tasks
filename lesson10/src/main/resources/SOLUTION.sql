SELECT s.*
 FROM Subject s
          JOIN (
     SELECT subject_id
     FROM MARK
     GROUP BY subject_id
     HAVING AVG(mark) > (SELECT AVG(mark) FROM MARK)
 ) m ON s.id = m.subject_id;