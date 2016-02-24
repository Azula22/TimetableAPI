# Points schema

# --- !Ups

CREATE TABLE Points (
    id BIGINT NOT NULL AUTO_INCREMENT,
    subject TEXT NOT NULL,
    groupName TEXT NOT NULL,
    start TEXT NOT NULL,
    ending TEXT NOT NULL,
    kind TEXT NOT NULL,
    teacher TEXT NOT NULL,
    auditorium INTEGER NOT NULL,
    PRIMARY KEY (id)
);

# --- !Downs

DROP TABLE Points;