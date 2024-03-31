sql
Copy
-- Insert new students
INSERT INTO student (name, birthday, groupnumber)
VALUES ('John', '2009-01-01', 1),
       ('Chris', '2009-02-01', 1),
       ('Carl', '2009-03-01', 1),
       ('Oliver', '2008-01-01', 2),
       ('James', '2008-02-01', 2),
       ('Lucas', '2008-03-01', 2),
       ('Henry', '2008-04-01', 2),
       ('Jacob', '2007-01-01', 3),
       ('Logan', '2007-02-01', 3);

-- Insert new subjects
INSERT INTO subject (name, description, grade)
VALUES ('Art', 'Art and music', 1),
       ('Music', 'Art and music', 1),
       ('Geography', 'Geography and history', 2),
       ('History', 'Geography and history', 2),
       ('PE', 'PE and math', 3),
       ('Math', 'PE and math', 3),
       ('Science', 'Science and IT', 4),
       ('IT', 'Science and IT', 4),
       ('Subject1', 'Subject for grade 5', 5),
       ('Subject2', 'Subject for grade 5', 5);

-- Insert new payment types
INSERT INTO paymenttype (name)
VALUES ('DAILY'),
       ('WEEKLY'),
       ('MONTHLY');

-- Insert new payments
INSERT INTO payment (type_id, amount, payment_date, student_id)
VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 100.0, NOW(), (SELECT id FROM student WHERE name = 'John')),
       ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 500.0, NOW(), (SELECT id FROM student WHERE name = 'Oliver')),
       ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 150.0, NOW(), (SELECT id FROM student WHERE name = 'Henry')),
       ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 20.0, NOW(), (SELECT id FROM student WHERE name = 'James'));

-- Insert new marks
INSERT INTO mark (student_id, subject_id, mark)
VALUES ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8),
       ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5),
       ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9),
       ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4),
       ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);