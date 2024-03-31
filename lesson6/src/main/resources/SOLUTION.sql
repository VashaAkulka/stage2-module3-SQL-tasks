SELECT * from payment inner join paymenttype on payment.type_id = paymenttype.id where paymenttype.name = 'MONTHLY';

SELECT * from mark inner join subject on mark.subject_id = subject.id where subject.name = 'Art';

SELECT DISTINCT student.* FROM student INNER JOIN payment ON student.id = payment.student_id INNER JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = 'WEEKLY';

SELECT DISTINCT student.* from student INNER JOIN mark on mark.student_id = student.id INNER JOIN subject on mark.subject_id = subject.id where subject.name = 'Math';

