-- Insert new Students
INSERT INTO student (name, birthday, groupnumber) VALUES
                                                      ('John', '2000-01-01', 1),
                                                      ('Chris', '2000-02-02', 1),
                                                      ('Carl', '2000-03-03', 1),
                                                      ('Oliver', '2000-04-04', 2),
                                                      ('James', '2000-05-05', 2),
                                                      ('Lucas', '2000-06-06', 2),
                                                      ('Henry', '2000-07-07', 2),
                                                      ('Jacob', '2000-08-08', 3),
                                                      ('Logan', '2000-09-09', 3);

-- Insert new Subjects
INSERT INTO subject (name, description, grade) VALUES
                                                   ('Art and music', 'Art and music for 1 grade', 1),
                                                   ('Geography', 'Geography and history for 2 grade', 2),
                                                   ('History', 'Geography and history for 2 grade', 2),
                                                   ('PE', 'PE and math for 3 grade', 3),
                                                   ('Math', 'PE and math for 3 grade', 3),
                                                   ('Science', 'Science and IT for 4 grade', 4),
                                                   ('IT', 'Science and IT for 4 grade', 4),
                                                   ('Extra Subject 1', 'Additional subject for 5 grade', 5),
                                                   ('Extra Subject 2', 'Additional subject for 5 grade', 5);

-- Insert Payment Types
INSERT INTO paymenttype (name) VALUES
                                   ('DAILY'),
                                   ('WEEKLY'),
                                   ('MONTHLY');

-- Insert Payments
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
                                                                    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 100.00, NOW(), (SELECT id FROM student WHERE name = 'John')),
                                                                    ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 200.00, NOW(), (SELECT id FROM student WHERE name = 'Oliver')),
                                                                    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 150.00, NOW(), (SELECT id FROM student WHERE name = 'Henry')),
                                                                    ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 10.00, NOW(), (SELECT id FROM student WHERE name = 'James'));

-- Insert Marks
INSERT INTO mark (student_id, subject_id, mark) VALUES
                                                    ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art and music'), 8),
                                                    ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5),
                                                    ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9),
                                                    ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4),
                                                    ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);
