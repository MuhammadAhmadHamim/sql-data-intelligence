-- Case Study: E-Sports Tournament Management System
/*
An organization manages online gaming tournaments.
Initially, all data is stored in a single unnormalized table.
We normalize it step by step up to 3NF.
*/

/*
| TeamID | TeamName      | CoachID | CoachName | TournamentID | TournamentName | SponsorID | SponsorName | Players                       | 
| ------ | ------------- | ------- | --------- | ------------ | -------------- | --------- | ----------- | ----------------------------- | 
| T01    | Shadow Wolves | C01     | Kamran    | TR01         | Summer Clash   | S01       | RedTech     | P01-Ali, P02-Zain, P03-Hassan | 
| T01    | Shadow Wolves | C01     | Kamran    | TR02         | Winter Cup     | S02       | HyperNet    | P01-Ali, P02-Zain, P03-Hassan | 
| T02    | Night Ravens  | C02     | Bilal     | TR01         | Summer Clash   | S01       | RedTech     | P04-Umar, P05-Hamza           | 
| T03    | Phantom Force | C03     | Ahmed     | TR03         | Pro League     | S03       | Nova Gaming | P06-Sara, P07-Ayesha          |


Problems:

-> Players column is repeating group
-> Redundant data across rows
-> Update anomalies
*/

-- 1NF (Atomic Values)

CREATE TABLE Management_1NF (
    TeamID VARCHAR(7) NOT NULL,
    TeamName VARCHAR(20) NOT NULL,

    CoachID VARCHAR(7) NOT NULL,
    CoachName VARCHAR(20) NOT NULL,

    TournamentID VARCHAR(7) NOT NULL,
    TournamentName VARCHAR(20) NOT NULL,

    SponsorID VARCHAR(7) NOT NULL,
    SponsorName VARCHAR(20) NOT NULL,

    PlayerID VARCHAR(7) NOT NULL,
    PlayerName VARCHAR(20) NOT NULL,

    PRIMARY KEY (TeamID, TournamentID, PlayerID)
);

-- 2NF (Remove Partial Dependencies)

-- Key Idea:

-- Separate entities so non-key attributes depend on full key only.

-- Coach

CREATE TABLE Coach (
    CoachID VARCHAR(7) PRIMARY KEY,
    CoachName VARCHAR(20)
);

-- Team

CREATE TABLE Team (
    TeamID VARCHAR(7) PRIMARY KEY,
    TeamName VARCHAR(20),
    CoachID VARCHAR(7),
    FOREIGN KEY (CoachID) REFERENCES Coach(CoachID)
);

--- Player

CREATE TABLE Player (
    PlayerID VARCHAR(7) PRIMARY KEY,
    PlayerName VARCHAR(20),
    TeamID VARCHAR(7),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);

--- Tournament

CREATE TABLE Tournament (
    TournamentID VARCHAR(7) PRIMARY KEY,
    TournamentName VARCHAR(20)
);

--- Sponsor

CREATE TABLE Sponsor (
    SponsorID VARCHAR(7) PRIMARY KEY,
    SponsorName VARCHAR(20)
);

--- Team–Tournament Relationship

CREATE TABLE TeamTournament (
    TeamID VARCHAR(7),
    TournamentID VARCHAR(7),

    PRIMARY KEY (TeamID, TournamentID),

    FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    FOREIGN KEY (TournamentID) REFERENCES Tournament(TournamentID)
);

--- 3NF (Remove Transitive Dependencies)

-- Key Fix:

-- No attribute should depend on another non-key attribute.

-- Tournament–Sponsor Relationship (Corrected)


CREATE TABLE TournamentSponsor (
    TournamentID VARCHAR(7),
    SponsorID VARCHAR(7),

    PRIMARY KEY (TournamentID, SponsorID),

    FOREIGN KEY (TournamentID) REFERENCES Tournament(TournamentID),
    FOREIGN KEY (SponsorID) REFERENCES Sponsor(SponsorID)
);
