INSERT INTO student (name, birthday, groupnumber) VALUES
                                                      ('John', '2015-01-01', 1),
                                                      ('Chris', '2015-02-02', 1),
                                                      ('Carl', '2015-03-03', 1),
                                                      ('Oliver', '2014-01-01', 2),
                                                      ('James', '2014-02-02', 2),
                                                      ('Lucas', '2014-03-03', 2),
                                                      ('Henry', '2014-04-04', 2),
                                                      ('Jacob', '2013-01-01', 3),
                                                      ('Logan', '2013-02-02', 3),
                                                      ('Emily', '2012-01-01', 4),
                                                      ('Sophia', '2012-02-02', 4),
                                                      ('Michael', '2011-01-01', 5),
                                                      ('William', '2011-02-02', 5);

INSERT INTO subject (name, description, grade) VALUES
                                                   ('Art and Music', 'Art and music subject for grade 1', 1),
                                                   ('Geography and History', 'Geography and history subject for grade 2', 2),
                                                   ('PE and Math', 'PE and math subject for grade 3', 3),
                                                   ('Science', 'Science subject for grade 4', 4),
                                                   ('IT', 'IT subject for grade 4', 4),
                                                   ('Physics', 'Physics subject for grade 5', 5),
                                                   ('Chemistry', 'Chemistry subject for grade 5', 5);

INSERT INTO paymenttype (name) VALUES
                                   ('DAILY'),
                                   ('WEEKLY'),
                                   ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
                                                                    (2, 50.00, '2024-03-31', 1),
                                                                    (3, 100.00, '2024-03-31', 4),
                                                                    (2, 50.00, '2024-03-31', 7),
                                                                    (1, 10.00, '2024-03-31', 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES
                                                    (2, 1, 8),
                                                    (4, 2, 5),
                                                    (5, 2, 9),
                                                    (8, 3, 4),
                                                    (9, 3, 9);