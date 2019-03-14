DROP TABLE IF EXISTS sandwich;

CREATE TABLE sandwich (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT
);

INSERT INTO sandwich (title, description) VALUES ('Ham','Description 1');
INSERT INTO sandwich (title, description) VALUES ('Jam','Description 2');
INSERT INTO sandwich (title, description) VALUES ('Spam','Description 3');
INSERT INTO sandwich (title, description) VALUES ('Clam','Description 4');
INSERT INTO sandwich (title, description) VALUES ('Lamb','Description 5');
