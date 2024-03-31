SELECT * from mark where mark > 6 ORDER BY mark desc;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * from paymenttype order by name ASC;
SELECT * from student order by name DESC;

SELECT student.* from student
inner join payment on payment.student_id = student.id
where payment.amount > 1000
GROUP BY student.birthday ASC;
