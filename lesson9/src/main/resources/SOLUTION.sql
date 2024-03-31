SELECT * FROM student
WHERE id IN (
    SELECT student_id
    FROM mark
    GROUP BY student_id
    HAVING AVG(mark) > 8
);

SELECT name, id from student
where id in (
    SELECT student_id
    From mark
    GROUP BY student_id
    HAVING min(mark) > 7
);

SELECT name, id from student
where id in (
    SELECT student_id
    From payment
    WHERE YEAR(payment_date) = 2019
    GROUP BY student_id
    HAVING count(*) > 2
);