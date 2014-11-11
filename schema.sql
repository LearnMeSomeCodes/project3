DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS emails;
DROP TABLE IF EXISTS phones;

CREATE TABLE people (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE emails (
  id INTEGER PRIMARY KEY,
  label VARCHAR(255),
  email VARCHAR(255),
  person_id INTEGER
);

CREATE TABLE phones (
  id INTEGER PRIMARY KEY,
  label VARCHAR(255),
  phone VARCHAR(255),
  person_id INTEGER
);