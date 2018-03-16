use codeup_test_db;

create table albums (
  id int unsigned not null AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL,
  name varchar(100) not null,
  release_date year(4),
  sales int not null,
  genre char(255)not null,
  PRIMARY KEY (id)
);
