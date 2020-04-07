BEGIN TRANSACTION;

DROP TABLE IF EXISTS help_topics;
DROP TABLE IF EXISTS curriculum;

CREATE TABLE help_topics (
id SERIAL PRIMARY KEY NOT NULL,
topic_name VARCHAR(150) NOT NULL
);

CREATE TABLE curriculum (
id SERIAL PRIMARY KEY NOT NULL,
topic VARCHAR(150)

);


INSERT INTO help_topics (topic_name) 
VALUES('Curriculum'),
      ('Pathways Program'),
      ('Motivation'),
      ('Finding Open Positions');

/*
DELETE FROM help_topics;
*/

SELECT * FROM help_topics;        
        
COMMIT;
        
    





