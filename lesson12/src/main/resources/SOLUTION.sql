DELETE student, mark
FROM student
INNER JOIN mark ON student.id = mark.student_id
INNER JOIN subject ON mark.subject_id = subject.id
WHERE subject.grade > 4;

DELETE student, mark
FROM student
INNER JOIN mark ON student.id = mark.student_id
WHERE mark < 4;

DELETE FROM payment
WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'Daily');
DELETE FROM paymenttype
WHERE name = 'Daily';

DELETE FROM mark
WHERE mark < 7;
