DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE EXISTS (SELECT 1 FROM subject WHERE subject.id = mark.subject_id AND subject.grade > 4));

DELETE FROM mark WHERE subject_id IN (SELECT id FROM subject WHERE grade > 4);



DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE mark < 4);

DELETE FROM mark WHERE mark < 4;



DELETE FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'Daily');
DELETE FROM paymenttype WHERE name = 'Daily';

DELETE FROM mark WHERE mark < 7;
