CREATE DATABASE demo_db;

CREATE TABLE IF NOT EXISTS contacts
( id INTEGER NOT NULL AUTO_INCREMENT,
  firstname VARCHAR (255) NOT NULL,
  lastname VARCHAR (255) NOT NULL,
  phone VARCHAR (55) NOT NULL,
  PRIMARY KEY (id)
);