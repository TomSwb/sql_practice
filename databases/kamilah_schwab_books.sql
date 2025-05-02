CREATE DATABASE kamilah_schwab_books;

USE kamilah_schwab_books;

CREATE TABLE stts_pre_orders (
  id INT(11) NOT NULL AUTO_INCREMENT,
  client VARCHAR(100) DEFAULT NULL,
  french INT(11) DEFAULT 0,
  english INT(11) DEFAULT 0,
  cost DECIMAL(10,2) GENERATED ALWAYS AS ((french + english) * 20) STORED,
  delivered TINYINT(1) DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO stts_pre_orders (id, client, french, english, delivered) VALUES
(1, 'Ange', 1, 1, 0),
(2, 'Antoine', 1, 0, 0),
(3, 'Benjamin', 0, 1, 0),
(4, 'Caroline', 0, 1, 0),
(5, 'Helen', 1, 0, 0),
(6, 'Jessica', 0, 1, 0),
(7, 'Jo', 1, 0, 0),
(8, 'Joe', 0, 1, 0),
(9, 'Jonas', 1, 1, 0),
(10, 'Jonathan', 1, 0, 0),
(11, 'Michelle', 0, 1, 0),
(12, 'Milidzi', 1, 0, 0),
(13, 'Olga', 0, 1, 0),
(14, 'Tamara', 1, 1, 0),
(15, 'Thomas', 1, 0, 0),
(16, 'Valerie', 1, 1, 0),
(17, 'Victoria', 0, 2, 0),
(18, 'Julia', 1, 0, 0),
(19, 'Nicola', 1, 1, 0),
(20, 'Mariana', 0, 1, 0),
(21, 'Anke', 0, 2, 0);