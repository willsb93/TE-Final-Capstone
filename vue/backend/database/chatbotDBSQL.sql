


CREATE TABLE help_topics (
id BIGSERIAL,
topic_name VARCHAR(150)
);

BEGIN TRANSACTION;

INSERT INTO help_topics (topic_name) 
VALUES('Curriculum'),
        ('Pathways Program'),
        ('Motivation'),
        ('Finding Open Positions');

/*
DELETE FROM help_topics;
*/

SELECT * FROM help_topics;        
        
ROLLBACK;
        
    
CREATE TABLE curriculum (
id BIGSERIAL,
curriculum_name VARCHAR(150)

);


