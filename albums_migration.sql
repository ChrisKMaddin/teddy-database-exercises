use codeup_test_db;

DROP TABLE IF EXISTS  albums;

create table if NOT EXISTS albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  release_date INT(4),
  sales DECIMAL(6, 2),
  genre CHAR(120),
  PRIMARY KEY (id)
);


