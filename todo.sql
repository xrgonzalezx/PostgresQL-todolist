DROP TABLE IF EXISTS todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority  INTEGER DEFAULT 1 NOT NULL ,
  created_at  timestamp NOT NULL,
  completed_at timestamp
);

-- id -- a serial primary key
-- title -- not optional, string up to 255 characters
-- details -- optional, holds a large amount of text
-- priority -- not optional, an integer. Default is 1.
-- created_at -- not optional. A date and time.
-- completed_at -- optional. A date a time.

INSERT INTO todos ( title, details, priority, created_at, completed_at) VALUES ( 'Take trash out', 'Place bag in container and place container by street', 3, now(), now());

INSERT INTO todos ( title, details, priority, created_at) VALUES ( 'Wash Car', 'Soap and Rinse', 4, now() );

INSERT INTO todos ( title, details, priority, created_at) VALUES ( 'Cut grass', 'Use lawnmower to trim grass to desired height', 5, now() );

INSERT INTO todos ( title, details, priority, created_at) VALUES ( 'Pay Bills', 'Send payments to destination thru mail', 6, now() );

INSERT INTO todos ( title, details, priority, created_at) VALUES ( 'Laundry', 'Place dirty clothes in wash machine, when done place damp clothes in dryer', 7, now() );

SELECT * FROM todos;

-- Write a SELECT statement to find all incomplete todos
SELECT title FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.
SELECT title FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = now() WHERE id = 5;

-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS NOT NULL;
