# FACULTY, GROUPS, TEACHERS, SUBJECTS schemas

# --- !Ups

CREATE TABLE FACULTY (
  NAME TEXT NOT NULL,
  PRIMARY KEY (NAME)
);

CREATE TABLE GROUPS (
  ID        BIGINT NOT NULL AUTO_INCREMENT,
  GROUPNAME TEXT   NOT NULL,
  FACULTY   TEXT   NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE TEACHERS (
  NAME TEXT NOT NULL,
  PRIMARY KEY (NAME)
);

CREATE TABLE SUBJECTS (
  ID         BIGINT NOT NULL AUTO_INCREMENT,
  NAME       TEXT   NOT NULL,
  GROUPID    BIGINT NOT NULL,
  FACULTY    TEXT   NOT NULL,
  TEACHER    TEXT,
  DAY        TEXT   NOT NULL,
  START      TIME   NOT NULL,
  IS_ODD     BOOL   NOT NULL,
  KIND       TEXT   NOT NULL,
  AUDITORIUM INTEGER,
  PRIMARY KEY (ID)
);

# --- !Downs

DROP TABLE FACULTY;
DROP TABLE GROUPS;
DROP TABLE TEACHERS;
DROP TABLE SUBJECTS;