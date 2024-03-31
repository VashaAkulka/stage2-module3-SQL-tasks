SELECT * FROM subject
WHERE grade > (SELECT AVG(mark) FROM mark);

SELECT * from student
where id in (
      SELECT student_id
      from payment
      group by student_id
      HAVING avg(amount) < (Select avg(amount) from payment)
);
