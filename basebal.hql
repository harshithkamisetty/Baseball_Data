-- Switch to the baseball database (create it if it doesn't exist)
CREATE DATABASE IF NOT EXISTS baseball_dbbank;
USE baseball_dbbank;

-- MASTER table
CREATE TABLE IF NOT EXISTS master (
  playerID STRING,
  birthYear INT,
  birthMonth INT,
  birthDay INT,
  birthCountry STRING,
  birthState STRING,
  birthCity STRING,
  deathYear INT,
  deathMonth INT,
  deathDay INT,
  deathCountry STRING,
  deathState STRING,
  deathCity STRING,
  nameFirst STRING,
  nameLast STRING,
  nameGiven STRING,
  weight INT,
  height INT,
  bats STRING,
  throws STRING,
  debut STRING,
  finalGame STRING,
  retroID STRING,
  bbrefID STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/people.csv' INTO TABLE master;

-- Batting table
CREATE TABLE IF NOT EXISTS batting (
  playerID STRING,
  yearID INT,
  stint INT,
  teamID STRING,
  lgID STRING,
  G INT,
  AB INT,
  R INT,
  H INT,
  `2B` INT,
  `3B` INT,
  HR INT,
  RBI INT,
  SB INT,
  CS INT,
  BB INT,
  SO INT,
  IBB INT,
  HBP INT,
  SH INT,
  SF INT,
  GIDP INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/Batting.csv' INTO TABLE batting;

-- Pitching table
CREATE TABLE IF NOT EXISTS pitching (
  playerID STRING,
  yearID INT,
  stint INT,
  teamID STRING,
  lgID STRING,
  W INT,
  L INT,
  G INT,
  GS INT,
  CG INT,
  SHO INT,
  SV INT,
  IPOuts INT,
  H INT,
  ER INT,
  HR INT,
  BB INT,
  SO INT,
  BAOpp DOUBLE,
  ERA DOUBLE,
  IBB INT,
  WP INT,
  HBP INT,
  BK INT,
  BFP INT,
  GF INT,
  R INT,
  SH INT,
  SF INT,
  GIDP INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/Pitching.csv' INTO TABLE pitching;

-- Fielding table
CREATE TABLE IF NOT EXISTS fielding (
  playerID STRING,
  yearID INT,
  stint INT,
  teamID STRING,
  lgID STRING,
  pos STRING,
  G INT,
  GS INT,
  InnOuts INT,
  PO INT,
  A INT,
  E INT,
  DP INT,
  PB INT,
  WP INT,
  SB INT,
  CS INT,
  ZR DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/Fielding.csv' INTO TABLE fielding;

-- AllStarFull table
CREATE TABLE IF NOT EXISTS allstarfull (
  playerID STRING,
  yearID INT,
  gameNum INT,
  gameID STRING,
  teamID STRING,
  lgID STRING,
  GP INT,
  startingPos STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/AllStarFull.csv' INTO TABLE allstarfull;

-- HallOfFame table
CREATE TABLE IF NOT EXISTS halloffame (
  playerID STRING,
  yearID INT,
  votedBy STRING,
  ballots INT,
  needed INT,
  votes INT,
  inducted STRING,
  category STRING,
  needed_note STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/HallofFame.csv' INTO TABLE halloffame;


-- Managers table
CREATE TABLE IF NOT EXISTS managers (
  playerID STRING,
  yearID INT,
  teamID STRING,
  lgID STRING,
  inseason INT,
  G INT,
  W INT,
  L INT,
  rank INT,
  plyrMgr STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/Managers.csv' INTO TABLE managers;


-- Teams table
CREATE TABLE IF NOT EXISTS teams (
  yearID INT,
  lgID STRING,
  teamID STRING,
  franchID STRING,
  divID STRING,
  rank INT,
  G INT,
  GHome INT,
  W INT,
  L INT,
  divWin STRING,
  wcWin STRING,
  lgWin STRING,
  wsWin STRING,
  R INT,
  AB INT,
  H INT,
  `2B` INT,
  `3B` INT,
  HR INT,
  BB INT,
  SO INT,
  SB INT,
  CS INT,
  HBP INT,
  SF INT,
  RA INT,
  ER INT,
  ERA DOUBLE,
  CG INT,
  SHO INT,
  SV INT,
  IPOuts INT,
  HA INT,
  HRA INT,
  BBA INT,
  SOA INT,
  E INT,
  DP INT,
  FP DOUBLE,
  name STRING,
  park STRING,
  attendance INT,
  BPF INT,
  PPF INT,
  teamIDBR STRING,
  teamIDlahman45 STRING,
  teamIDretro STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/Teams.csv' INTO TABLE teams;


-- BattingPost table
CREATE TABLE IF NOT EXISTS battingpost (
  playerID STRING,
  yearID INT,
  round STRING,
  teamID STRING,
  lgID STRING,
  G INT,
  AB INT,
  R INT,
  H INT,
  `2B` INT,
  `3B` INT,
  HR INT,
  RBI INT,
  SB INT,
  CS INT,
  BB INT,
  SO INT,
  IBB INT,
  HBP INT,
  SH INT,
  SF INT,
  GIDP INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/BattingPost.csv' INTO TABLE battingpost;


-- PitchingPost table
CREATE TABLE IF NOT EXISTS pitchingpost (
  playerID STRING,
  yearID INT,
  round STRING,
  teamID STRING,
  lgID STRING,
  W INT,
  L INT,
  G INT,
  GS INT,
  CG INT,
  SHO INT,
  SV INT,
  IPOuts INT,
  H INT,
  ER INT,
  HR INT,
  BB INT,
  SO INT,
  BAOpp DOUBLE,
  ERA DOUBLE,
  IBB INT,
  WP INT,
  HBP INT,
  BK INT,
  BFP INT,
  GF INT,
  R INT,
  SH INT,
  SF INT,
  GIDP INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/PitchingPost.csv' INTO TABLE pitchingpost;


-- TeamFranchises table
CREATE TABLE IF NOT EXISTS teamfranchises (
  franchID STRING,
  franchName STRING,
  active STRING,
  NAassoc STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/TeamsFranchises.csv' INTO TABLE teamfranchises;


-- FieldingOF table
CREATE TABLE IF NOT EXISTS fieldingof (
  playerID STRING,
  yearID INT,
  stint INT,
  Glf INT,
  Gcf INT,
  Grf INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Load data into appearances table
LOAD DATA INPATH '/baseball/core/FieldingOF.csv' INTO TABLE fieldingoF;


-- FieldingPost table
CREATE TABLE IF NOT EXISTS fieldingpost (
  playerID STRING,
  yearID INT,
  teamID STRING,
  lgID STRING,
  round STRING,
  pos STRING,
  G INT,
  GS INT,
  InnOuts INT,
  PO INT,
  A INT,
  E INT,
  DP INT,
  TP INT,
  PB INT,
  SB INT,
  CS INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH '/baseball/core/FieldingPost.csv' INTO TABLE fieldingpost;

-- ManagersHalf table
CREATE TABLE IF NOT EXISTS managershalf (
  playerID STRING,
  yearID INT,
  teamID STRING,
  lgID STRING,
  inseason INT,
  half STRING,
  G INT,
  W INT,
  L INT,
  rank INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH '/baseball/core/ManagersHalf.csv' INTO TABLE managershalf;

-- TeamsHalf table
CREATE TABLE IF NOT EXISTS teamshalf (
  yearID INT,
  lgID STRING,
  teamID STRING,
  half STRING,
  divID STRING,
  divWin STRING,
  rank INT,
  G INT,
  W INT,
  L INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH '/baseball/core/TeamsHalf.csv' INTO TABLE teamshalf;

-- Salaries table
CREATE TABLE IF NOT EXISTS salaries (
  yearID INT,
  teamID STRING,
  lgID STRING,
  playerID STRING,
  salary INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/Salaries.csv' INTO TABLE salaries;

-- SeriesPost table
CREATE TABLE IF NOT EXISTS seriespost (
  yearID INT,
  round STRING,
  teamIDwinner STRING,
  lgIDwinner STRING,
  teamIDloser STRING,
  lgIDloser STRING,
  wins INT,
  losses INT,
  ties INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/SeriesPost.csv' INTO TABLE seriespost;

-- AwardsManagers table
CREATE TABLE IF NOT EXISTS awardsmanagers (
  playerID STRING,
  awardID STRING,
  yearID INT,
  lgID STRING,
  tie STRING,
  notes STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/AwardsManagers.csv' INTO TABLE awardsmanagers;

-- AwardsPlayers table
CREATE TABLE IF NOT EXISTS awardsplayers (
  playerID STRING,
  awardID STRING,
  yearID INT,
  lgID STRING,
  tie STRING,
  notes STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/AwardsPlayers.csv' INTO TABLE awardsplayers;

-- AwardsShareManagers table
CREATE TABLE IF NOT EXISTS awardssharemanagers (
  awardID STRING,
  yearID INT,
  lgID STRING,
  playerID STRING,
  pointsWon INT,
  pointsMax INT,
  votesFirst INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/AwardsShareManagers.csv' INTO TABLE awardssharemanagers;


-- AwardsSharePlayers table
CREATE TABLE IF NOT EXISTS awardsshareplayers (
  awardID STRING,
  yearID INT,
  lgID STRING,
  playerID STRING,
  pointsWon INT,
  pointsMax INT,
  votesFirst INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/AwardsSharePlayers.csv' INTO TABLE awardsshareplayers;

-- Appearances table
CREATE TABLE IF NOT EXISTS appearances (
  yearID INT,
  teamID STRING,
  lgID STRING,
  playerID STRING,
  G_all INT,
  GS INT,
  G_batting INT,
  G_defense INT,
  G_p INT,
  G_c INT,
  G_1b INT,
  G_2b INT,
  G_3b INT,
  G_ss INT,
  G_lf INT,
  G_cf INT,
  G_rf INT,
  G_of INT,
  G_dh INT,
  G_ph INT,
  G_pr INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH '/baseball/core/Appearances.csv' INTO TABLE appearances;


-- Schools table
CREATE TABLE IF NOT EXISTS schools (
  schoolID STRING,
  schoolName STRING,
  schoolCity STRING,
  schoolState STRING,
  schoolNick STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/Schools.csv' INTO TABLE schools;

-- CollegePlaying table
CREATE TABLE IF NOT EXISTS collegeplaying (
  playerID STRING,
  schoolID STRING,
  year INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


LOAD DATA INPATH '/baseball/core/CollegePlaying.csv' INTO TABLE collegeplaying;

