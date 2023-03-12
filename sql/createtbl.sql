-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.
-- CREATE TABLE MYTEST01
-- (
--   id INTEGER NOT NULL
--  ,value INTEGER
--  ,PRIMARY KEY(id)
-- );

CREATE TABLE Team
(
  national_association_name VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  group_letter VARCHAR(1) NOT NULL,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY(national_association_name)
);

CREATE TABLE Stadium
(
  stadium_name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  capacity INT NOT NULL,
  PRIMARY KEY(stadium_name)
);

CREATE TABLE Match
(
  mid INT NOT NULL,
  match_date DATE NOT NULL,
  match_time TIME NOT NULL,
  match_length INT NOT NULL,
  stadium_name VARCHAR(255) NOT NULL,
  round VARCHAR(255) NOT NULL,
  PRIMARY KEY(mid),
  FOREIGN KEY(stadium_name) REFERENCES Stadium(stadium_name)
);

CREATE TABLE Teaminmatch
(
  national_association_name VARCHAR(255) NOT NULL,
  mid INT NOT NULL,
  PRIMARY KEY(national_association_name, mid),
  FOREIGN KEY(national_association_name) REFERENCES Team(national_association_name),
  FOREIGN KEY(mid) REFERENCES Match(mid)
);

CREATE TABLE Ticket
(
  tid INT NOT NULL,
  seat_number INT NOT NULL,
  price DEC(10,2) NOT NULL,
  client_email VARCHAR(255) NOT NULL,
  mid INT NOT NULL,
  PRIMARY KEY(tid),
  FOREIGN KEY(mid) REFERENCES Match(mid)
);

CREATE TABLE Coach
(
  pid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  role VARCHAR(255) NOT NULL,
  national_association_name VARCHAR(255) NOT NULL,
  PRIMARY KEY(pid),
  FOREIGN KEY(national_association_name) REFERENCES Team(national_association_name)
);

CREATE TABLE Player
(
  pid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  general_position VARCHAR(255) NOT NULL,
  shirt_number INT NOT NULL,
  national_association_name VARCHAR(255) NOT NULL,
  PRIMARY KEY(pid),
  FOREIGN KEY(national_association_name) REFERENCES Team(national_association_name)
);

CREATE TABLE Goal
(
  gid INT NOT NULL,
  time_of_goal TIME NOT NULL,
  is_penalty BOOLEAN NOT NULL,
  period INT NOT NULL,
  PRIMARY KEY(gid)
);

CREATE TABLE Playerplaysin
(
  pid INT NOT NULL,
  mid INT NOT NULL,
  enter_time INT NOT NULL,
  exit_time INT NULL,
  position VARCHAR(255) NOT NULL,
  number_of_yellow_card INT NOT NULL,
  received_red_card BOOLEAN NOT NULL,
  PRIMARY KEY(pid, mid),
  FOREIGN KEY(pid) REFERENCES Player(pid),
  FOREIGN KEY(mid) REFERENCES Match(mid)
);

CREATE TABLE Playerscored
(
  pid INT NOT NULL,
  gid INT NOT NULL,
  mid INT NOT NULL,
  PRIMARY KEY(pid, gid, mid),
  FOREIGN KEY(pid) REFERENCES Player(pid),
  FOREIGN KEY(gid) REFERENCES Goal(gid),
  FOREIGN KEY(mid) REFERENCES Match(mid)
);

CREATE TABLE Referee
(
  pid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  years_of_experience INT NOT NULL,
  country VARCHAR(255) NOT NULL,
  PRIMARY KEY (pid)
);

CREATE TABLE Refereeoversees
(
  pid INT NOT NULL,
  mid INT NOT NULL,
  PRIMARY KEY(pid, mid),
  FOREIGN KEY(pid) REFERENCES Referee(pid),
  FOREIGN KEY(mid) REFERENCES Match(mid)
);

ALTER TABLE Player
ADD CONSTRAINT position_check
CHECK (general_position in  ('Goalkeeper', 'Midfielder', 'Striker', 'Defender', 'Forward')) ;