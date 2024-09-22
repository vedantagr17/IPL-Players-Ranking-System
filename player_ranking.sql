CREATE TABLE Team (
    team_id VARCHAR(30) PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    team_points INT
);

INSERT INTO Team (team_id, team_name, team_points) VALUES ('MI', 'Mumbai Indians', 18);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('CSK', 'Chennai Super Kings', 8);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('DC', 'Delhi Capitals', 16);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('KKR', 'Kolkata Knight Riders', 16);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('RCB', 'Royal Challengers Bengaluru', 22);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('RR', 'Rajasthan Royals', 14);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('PBKS', 'Punjab Kings', 6);
INSERT INTO Team (team_id, team_name, team_points) VALUES ('SRH', 'Sunrisers Hyderabad', 12);

SELECT * FROM Team;

CREATE TABLE Player (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(255),
    player_team VARCHAR(10) REFERENCES Team(team_id),
    player_role VARCHAR(15)
);

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (1, 'Rohit Sharma', 'MI', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (2, 'Jasprit Bumrah', 'MI', 'Bowler');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (3, 'Kieron Pollard', 'MI', 'All-Rounder');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (4, 'MS Dhoni', 'CSK', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (5, 'Ravindra Jadeja', 'CSK', 'All-Rounder');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (6, 'Deepak Chahar', 'CSK', 'Bowler');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (7, 'Rishabh Pant', 'DC', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (8, 'Kagiso Rabada', 'DC', 'Bowler');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (9, 'Shikhar Dhawan', 'DC', 'Batsman');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (10, 'Andre Russell', 'KKR', 'All-Rounder');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (11, 'Sunil Narine', 'KKR', 'Bowler');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (12, 'Dinesh Karthik', 'KKR', 'Batsman');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (13, 'Virat Kohli', 'RCB', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (14, 'AB de Villiers', 'RCB', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (15, 'Yuzvendra Chahal', 'RCB', 'Bowler');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (16, 'Sanju Samson', 'RR', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (17, 'Ben Stokes', 'RR', 'All-Rounder');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (18, 'Jofra Archer', 'RR', 'Bowler');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (19, 'KL Rahul', 'PBKS', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (20, 'Mohammed Shami', 'PBKS', 'Bowler');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (21, 'Chris Gayle', 'PBKS', 'Batsman');

INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (22, 'David Warner', 'SRH', 'Batsman');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (23, 'Rashid Khan', 'SRH', 'Bowler');
INSERT INTO Player (player_id, player_name, player_team, player_role) VALUES (24, 'Kane Williamson', 'SRH', 'Batsman');

SELECT * FROM Player;

CREATE TABLE Player_Performance (
    teamID VARCHAR(10) REFERENCES Team(team_id),
    player_num INT REFERENCES Player(player_id),
    runs INT,
    wickets INT,
    catches INT,
    CONSTRAINT PK PRIMARY KEY (player_num, teamID)
);

-- Inserting player performance data for Mumbai Indians (MI)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('MI', 1, 500, 0, 15);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('MI', 2, 10, 20, 5);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('MI', 3, 300, 10, 10);

-- Inserting player performance data for Chennai Super Kings (CSK)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('CSK', 4, 400, 0, 12);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('CSK', 5, 250, 15, 8);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('CSK', 6, 20, 18, 2);

-- Inserting player performance data for Delhi Capitals (DC)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('DC', 7, 450, 0, 14);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('DC', 8, 100, 25, 4);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('DC', 9, 600, 0, 7);

-- Inserting player performance data for Kolkata Knight Riders (KKR)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('KKR', 10, 350, 15, 12);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('KKR', 11, 150, 20, 9);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('KKR', 12, 450, 0, 10);

-- Inserting player performance data for Royal Challengers Bengaluru (RCB)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RCB', 13, 600, 0, 16);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RCB', 14, 500, 0, 14);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RCB', 15, 50, 22, 3);

-- Inserting player performance data for Rajasthan Royals (RR)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RR', 16, 450, 0, 11);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RR', 17, 300, 12, 10);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('RR', 18, 100, 18, 5);

-- Inserting player performance data for Punjab Kings (PBKS)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('PBKS', 19, 550, 0, 17);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('PBKS', 20, 20, 20, 6);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('PBKS', 21, 500, 0, 13);

-- Inserting player performance data for Sunrisers Hyderabad (SRH)
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('SRH', 22, 650, 0, 18);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('SRH', 23, 80, 25, 7);
INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches) VALUES ('SRH', 24, 450, 0, 9);

SELECT * FROM Player_Performance;

-- BEFORE TRIGGER FOR UPDATION
CREATE OR REPLACE TRIGGER before_update_all_runs_trigger
BEFORE UPDATE ON Player_Performance
FOR EACH ROW
BEGIN
        IF :NEW.wickets >= 5 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has wickets greater than or equal to 5');
    END IF;
    IF :NEW.runs >= 200 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has runs greater than or equal to 200');
    END IF;
	DBMS_OUTPUT.PUT_LINE('BEFORE TRIGGER FOR UPDATION SUCCESSFULL!');
	DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');
END;
/

-- AFTER TRIGGER FOR UPDATION
CREATE OR REPLACE TRIGGER after_update_all_runs_trigger
AFTER UPDATE ON Player_Performance
FOR EACH ROW
BEGIN
    IF :NEW.wickets < 5 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has wickets less than 5');
    END IF;
	IF :NEW.runs < 200 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has runs less than 200');
    END IF;    
	DBMS_OUTPUT.PUT_LINE('AFTER TRIGGER FOR UPDATION SUCCESSFULL!');
	DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');

END;
/

-- BEFORE TRIGGER FOR INSERTION
CREATE OR REPLACE TRIGGER before_insert_performances_trigger
BEFORE INSERT ON Player_Performance
FOR EACH ROW
BEGIN
    IF :NEW.wickets >= 5 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has wickets greater than or equal to 5');
    END IF;
	IF :NEW.runs >= 200 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has runs greater than or equal to 200');
    END IF;
	DBMS_OUTPUT.PUT_LINE('BEFORE TRIGGER FOR INSERTION SUCCESSFULL!');
	DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');
END;
/

-- AFTER TRIGGER FOR INSERTION
CREATE OR REPLACE TRIGGER after_insert_performances_trigger
AFTER INSERT ON Player_Performance
FOR EACH ROW
BEGIN
    IF :NEW.wickets < 5 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has wickets less than 5');
    END IF;
	IF :NEW.runs >= 200 THEN
        DBMS_OUTPUT.PUT_LINE('Player ID ' || :NEW.player_num || ' has runs less than 200');
    END IF;
	DBMS_OUTPUT.PUT_LINE('BEFORE TRIGGER FOR INSERTION SUCCESSFULL!');
	DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');
END;
/

-- BEFORE TRIGGER FOR DELETION
CREATE OR REPLACE TRIGGER before_delete_players_trigger
BEFORE DELETE ON Player_Performance
BEGIN
    DBMS_OUTPUT.PUT_LINE('Players are being deleted based on performance...');
    DBMS_OUTPUT.PUT_LINE('BEFORE TRIGGER FOR DELETION EXECUTED!');
    DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');
END;
/

-- AFTER TRIGGER FOR DELETION
CREATE OR REPLACE TRIGGER after_delete_players_trigger
AFTER DELETE ON Player_Performance
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Deleted Player ID: ' || :OLD.player_num || ', Team: ' || :OLD.teamID);
    DBMS_OUTPUT.PUT_LINE('AFTER TRIGGER FOR DELETION EXECUTED!');
    DBMS_OUTPUT.PUT_LINE('<-------------------------------------->');
END;
/

-- CREATION OF PACKAGE    
CREATE OR REPLACE PACKAGE Player_Performance_Pkg AS
  PROCEDURE Update_All_Runs(team_ID IN VARCHAR2, new_runs IN INT);
  PROCEDURE Insert_Performances;
  PROCEDURE Delete_Players_Performance;
END Player_Performance_Pkg;
/
    
CREATE OR REPLACE PACKAGE BODY Player_Performance_Pkg AS
-- PROCEDURE 1  (to update all runs)  
  PROCEDURE Update_All_Runs(team_ID IN VARCHAR2, new_runs IN INT) IS
  BEGIN
    UPDATE Player_Performance
    SET runs = new_runs
    WHERE teamID = team_ID;

    IF SQL%NOTFOUND THEN
      RAISE_APPLICATION_ERROR(-20001, 'No rows updated.');
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
  END Update_All_Runs;

-- PROCEDURE 2 (to insert performances)
  PROCEDURE Insert_Performances IS
  BEGIN
    INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches)
    VALUES ('CSK', 4, 400, 0, 12);  -- MS Dhoni (CSK)

    INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches)
    VALUES ('DC', 8, 100, 25, 4);   -- Kagiso Rabada (DC)
    
    INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches)
    VALUES ('RCB', 15, 50, 22, 3);  -- Yuzvendra Chahal (RCB)
    
    INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches)
    VALUES ('MI', 1, 500, 0, 15);   -- Rohit Sharma (MI)
    
    INSERT INTO Player_Performance (teamID, player_num, runs, wickets, catches)
    VALUES ('KKR', 10, 350, 15, 12); -- Andre Russell (KKR)

    IF SQL%NOTFOUND THEN
      RAISE_APPLICATION_ERROR(-20001, 'No rows inserted.');
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
  END Insert_Performances;

-- PROCEDURE 3 (to delete players' performances)
  PROCEDURE Delete_Players_Performance AS
  BEGIN
    DELETE FROM Player_Performance
    WHERE runs < 100 OR wickets = 0;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No rows deleted based on the specified conditions.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Rows deleted successfully based on player performance.');
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
  END Delete_Players_Performance;
END Player_Performance_Pkg;
/

-- Executing the package procedures
DECLARE
  total_runs INT;
BEGIN
  -- Update runs for DC team
  Player_Performance_Pkg.Update_All_Runs('DC', 300);
  DBMS_OUTPUT.PUT_LINE('All Runs updated successfully.');
  DBMS_OUTPUT.PUT_LINE('*');
  
  -- Insert new performances for various teams
  Player_Performance_Pkg.Insert_Performances;
  DBMS_OUTPUT.PUT_LINE('All Performances inserted successfully.');
  DBMS_OUTPUT.PUT_LINE('*');

  -- Delete players based on specified conditions
  Player_Performance_Pkg.Delete_Players_Performance;
  DBMS_OUTPUT.PUT_LINE('All Poor performances deleted successfully.');
  DBMS_OUTPUT.PUT_LINE('*');
    
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
