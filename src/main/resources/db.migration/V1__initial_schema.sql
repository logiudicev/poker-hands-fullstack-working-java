CREATE TABLE teams
(
    id   serial,
    team VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

/*
 one to many: TEAM has many PEOPLE
*/

DROP TABLE IF EXISTS people;
CREATE TABLE people
(
    id             serial,
    team_id        int NOT NULL,
    people_id      int NOT NULL,
    fname          VARCHAR(64),
    lname          VARCHAR(64),
    start_date timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people (id) ON DELETE CASCADE
);