SELECT min(student.birthday) from student;
SELECT min(payment.payment_date) from payment;

SELECT avg(mark.mark) from mark inner join subject on subject.id = mark.subject_id where subject.name = 'Math';

SELECT min(payment.amount) from payment inner join paymenttype on paymenttype.id = payment.type_id where paymenttype.name = 'WEEKLY';