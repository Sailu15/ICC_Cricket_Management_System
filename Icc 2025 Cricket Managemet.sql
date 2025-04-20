create database if not exists icc2025;
USE icc2025;

CREATE TABLE Teams (
    TeamID INT PRIMARY KEY auto_increment,
    TeamName VARCHAR(255) UNIQUE,
    Country VARCHAR(100)
);

INSERT INTO TEAMS(TEAMNAME,COUNTRY)
VALUES
	('AFGHANISTAN','AFGHANISTAN'),
    ('AUSTRALIA','AUSTRALIA'),
    ('BANGLADESH','BANGLADESH'),
    ('ENGLAND','ENGLAND'),
    ('INDIA','INDIA'),
    ('IRELAND','IRELAND'),
    ('NEW ZEALAND','NEW ZEALAND'),
    ('PAKISTAN','PAKISTAN'),
    ('SOUTH AFRICA','SOUTH AFRICA'),
    ('SRI LANKA','SRI LANKA'),
    ('WEST INDIES','WEST INDIES'),
    ('ZIMBABWE','ZIMBABWE');
    SELECT * FROM TEAMS;
    delete from teams
    order by teamid desc
    limit 3;

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY auto_increment,
    Name VARCHAR(255),
    Role VARCHAR(50),
    TeamID INT ,
    BattingAverage DECIMAL(5,2),
    BowlingAverage DECIMAL(5,2),
    foreign key (Teamid) references Teams(Teamid)
);
INSERT INTO PLAYERS (Name, Role, TeamID, BattingAverage, BowlingAverage)
VALUES
    ('mohammad nabi', 'All Rounder', 1, 59, 14),
    ('Rahmat shah', 'all rounder', 1, 41, 263),
    ('Darwish Rasooli', 'batsman', 1, NULL, NULL),
    ('RAHMANULLAH GURBAZ', 'WICKET KEEPER', 1, 8, 329),
    ('NOOR AHMAD', 'BOWLER', 1, 306, 145),
    ('NAVEED ZADRAN', 'BOWLER', 1, 357, 244),
    ('GULBADIN NAIB', 'ALL ROUNDER', 1, 154, 122),
    ('FARID MALIK', 'BOWLER', 1, 290, 108),
    ('IKRAM ALI KHIL', 'WICKET KEEPER', 1, 191, NULL),
    ('FAZALHAQ FAROOQI', 'BOWLER', 1, 202, 31),
    ('AZMATULLAH OMARZAI', 'ALL ROUNDER', 1, 32, 49),
    ('NANGEYALIA KHAROTE KHAN', 'BOWLER', 1, 287, 124),
    ('HASHMAT SHAIDI', 'BATSMAN', 1, 53, 301),
    ('RASHID KHAN', 'BOWLER', 1, 124, 1),
    ('IBRAHIM ZADRAN', 'BATSMAN', 1, 18, NULL),
    ('SEDIQULLAH ATAL', 'BATSMAN', 1, 115, NULL),
    ('BILAL SAMI', 'BOWLER', 1, 409, 319),
    ('steven smoth', 'batsman', 2, 56.74, 52.05),
    ('Alex carey', 'wicketkeeper-batsman', 2, 35.14, NULL),
    ('jake Fraser mcgurk', 'batsman', 2, 14.00, NULL),
    ('Travis Head', 'batsman', 2, 42.74, 34.33),
    ('Josh Inglis', 'batsman', 2, 23.60, NULL),
    ('Marnus Labuschagne', 'batsman', 2, 35.86, 47.33),
    ('matthew short', 'batsman', 2, 22.53, 113.00),
    ('sean abbott', 'all rounder-bowler', 2, 37.69, 19.68),
    ('Aaron Hardie', 'all rounder', 2, 16.60, 33.70),
    ('Glenn Maxwell', 'all rounder', 2, 33.76, 46.97),
    ('ben dwarshuis', 'bowler', 2, 32.50, 9.00),
    ('nathan ellis', 'bowler', 2, 33.75, 15.75),
    ('spencer johnson', 'bowler', 2, 66.50, 12.00),
    ('Tanveer Sangha', 'bowler', 2, 79.50, 5.00),
    ('Nazmul Hossain Shanto', 'Batsman', 3, 35.00, NULL),
    ('Soumya Sarkar', 'All-Rounder', 3, 30.00, 40.00),
    ('Tanzid Hasan', 'Batsman', 3, 28.00, NULL),
    ('Jaker Ali', 'Wicketkeeper-Batsman', 3, 25.00, NULL),
    ('Mushfiqur Rahim', 'Wicketkeeper-Batsman', 3, 37.00, NULL),
    ('Mahmudullah', 'All-Rounder', 3, 32.00, 35.00),
    ('Mehidy Hasan Miraz', 'All-Rounder', 3, 20.00, 30.00),
    ('Rishad Hossain', 'Bowler', 3, 10.00, 25.00),
    ('Taskin Ahmed', 'Bowler', 3, 8.00, 28.00),
    ('Nahid Rana', 'Bowler', 3, 7.00, 26.00),
    ('Tanzim Hasan Sakib', 'Bowler', 3, 6.00, 24.00),
    ('Jos Buttler', 'Wicketkeeper-Batsman (Captain)', 4, 42.00, NULL),
    ('Jofra Archer', 'Bowler', 4, 12.00, 25.50),
    ('Gus Atkinson', 'Bowler', 4, 8.00, 26.00),
    ('Tom Banton', 'Batsman', 4, 28.00, NULL),
    ('Harry Brook', 'Batsman', 4, 35.00, NULL),
    ('Brydon Carse', 'All-Rounder', 4, 20.00, 32.00),
    ('Ben Duckett', 'Batsman', 4, 33.00, NULL),
    ('Jamie Overton', 'All-Rounder', 4, 18.00, 29.00),
    ('Jamie Smith', 'Wicketkeeper-Batsman', 4, 25.00, NULL),
    ('Liam Livingstone', 'All-Rounder', 4, 30.00, 34.00),
    ('Adil Rashid', 'Bowler', 4, 10.00, 28.00),
    ('Joe Root', 'Batsman', 4, 50.00, 40.00),
    ('Saqib Mahmood', 'Bowler', 4, 9.00, 27.00),
    ('Phil Salt', 'Wicketkeeper-Batsman', 4, 30.00, NULL),
    ('Mark Wood', 'Bowler', 4, 7.00, 24.00),
    ('Rohit Sharma', 'Batsman', 5, 48.96, NULL),
    ('Shubman Gill', 'Batsman', 5, 45.00, NULL),
    ('Virat Kohli', 'Batsman', 5, 59.07, NULL),
    ('Shreyas Iyer', 'Batsman', 5, 42.00, NULL),
    ('KL Rahul', 'Batsman', 5, 47.00, NULL),
    ('Rishabh Pant', 'Wicketkeeper-Batsman', 5, 34.00, NULL),
    ('Hardik Pandya', 'All-rounder', 5, 30.00, 35.00),
    ('Axar Patel', 'All-rounder', 5, 20.00, 30.00),
    ('Washington Sundar', 'All-rounder', 5, 25.00, 35.00),
    ('Kuldeep Yadav', 'Bowler', 5, NULL, 25.00),
    ('Harshit Rana', 'Bowler', 5, NULL, 28.00),
    ('Mohd. Shami', 'Bowler', 5, NULL, 26.00),
    ('Arshdeep Singh', 'Bowler', 5, NULL, 24.00),
    ('Ravindra Jadeja', 'All-rounder', 5, 35.00, 29.00),
    ('Varun Chakaravarthy', 'Bowler', 5, NULL, 27.00),
    ('CA Young', 'Batsman', 6, 35.00, NULL),
    ('TF van Woerkom', 'Bowler', 6, NULL, 28.00),
    ('BJ McCarthy', 'Bowler', 6, NULL, 26.00),
    ('F Hand', 'Bowler', 6, NULL, 30.00),
    ('MJ Humphreys', 'All-rounder', 6, 25.00, 32.00),
    ('B White', 'Batsman', 6, 40.00, NULL),
    ('LJ Tucker', 'Wicketkeeper-Batsman', 6, 38.00, NULL),
    ('HT Tector', 'Batsman', 6, 42.00, NULL),
    ('PJ Moor', 'Wicketkeeper-Batsman', 6, 36.00, NULL),
    ('GI Hume', 'Bowler', 6, NULL, 27.00),
    ('M Commins', 'Batsman', 6, 34.00, NULL),
    ('C Campher', 'All-rounder', 6, 30.00, 29.00),
    ('Mitchell Santner', 'All-rounder', 7, 25.00, 30.00),
    ('Michael Bracewell', 'All-rounder', 7, 28.00, 32.00),
    ('Mark Chapman', 'Batsman', 7, 35.00, NULL),
    ('Devon Conway', 'Wicketkeeper-Batsman', 7, 45.00, NULL),
    ('Lockie Ferguson', 'Bowler', 7, NULL, 28.00),
    ('Matt Henry', 'Bowler', 7, NULL, 26.00),
    ('Tom Latham', 'Wicketkeeper-Batsman', 7, 40.00, NULL),
    ('Daryl Mitchell', 'All-rounder', 7, 38.00, 34.00),
    ('Will O''Rourke', 'Bowler', 7, NULL, 27.00),
    ('Glenn Phillips', 'Batsman', 7, 37.00, NULL),
    ('Rachin Ravindra', 'All-rounder', 7, 30.00, 33.00),
    ('Nathan Smith', 'Bowler', 7, NULL, 29.00),
    ('Kane Williamson', 'Batsman', 7, 50.00, NULL),
    ('Will Young', 'Batsman', 7, 36.00, NULL),
    ('Jacob Duffy', 'Bowler', 7, NULL, 30.00),
    ('Mohammad Rizwan', 'Wicketkeeper-Batsman', 8, 45.00, NULL),
    ('Babar Azam', 'Batsman', 8, 55.00, NULL),
    ('Fakhar Zaman', 'Batsman', 8, 40.00, NULL),
    ('Kamran Ghulam', 'Batsman', 8, 35.00, NULL),
    ('Saud Shakeel', 'Batsman', 8, 38.00, NULL),
    ('Tayyab Tahir', 'Batsman', 8, 30.00, NULL),
    ('Faheem Ashraf', 'All-rounder', 8, 25.00, 32.00),
    ('Khushdil Shah', 'All-rounder', 8, 28.00, 34.00),
    ('Salman Ali Agha', 'All-rounder', 8, 30.00, 33.00),
    ('Usman Khan', 'Batsman', 8, 35.00, NULL),
    ('Abrar Ahmed', 'Bowler', 8, NULL, 28.00),
    ('Haris Rauf', 'Bowler', 8, NULL, 26.00),
    ('Mohammad Hasnain', 'Bowler', 8, NULL, 27.00),
    ('Naseem Shah', 'Bowler', 8, NULL, 25.00),
    ('Shaheen Shah Afridi', 'Bowler', 8, NULL, 24.00),
    ('Temba Bavuma', 'Batsman', 9, 45.00, NULL),
    ('Tony de Zorzi', 'Batsman', 9, 38.00, NULL),
    ('Marco Jansen', 'All-rounder', 9, 25.00, 30.00),
    ('Heinrich Klaasen', 'Wicketkeeper-Batsman', 9, 40.00, NULL),
    ('Keshav Maharaj', 'Bowler', 9, NULL, 28.00),
    ('Aiden Markram', 'All-rounder', 9, 42.00, 32.00),
    ('David Miller', 'Batsman', 9, 39.00, NULL),
    ('Wiaan Mulder', 'All-rounder', 9, 30.00, 34.00),
    ('Lungi Ngidi', 'Bowler', 9, NULL, 26.00),
    ('Kagiso Rabada', 'Bowler', 9, NULL, 24.00),
    ('Ryan Rickelton', 'Wicketkeeper-Batsman', 9, 35.00, NULL),
    ('Tabraiz Shamsi', 'Bowler', 9, NULL, 27.00),
    ('Tristan Stubbs', 'Batsman', 9, 33.00, NULL),
    ('Rassie van der Dussen', 'Batsman', 9, 44.00, NULL),
    ('Corbin Bosch', 'All-rounder', 9, 28.00, 31.00);
    select * from players;
    
    CREATE TABLE Matches (
    MatchID INT PRIMARY KEY auto_increment,
    Team1ID INT,
    Team2ID INT,
    MatchDate DATETIME,
    Venue VARCHAR(255) CHARACTER SET utf8mb4 ,
    WinnerID INT NULL ,
	FOREIGN KEY (team1id) REFERENCES Teams(TeamID),
	FOREIGN KEY (team2id) REFERENCES Teams(TeamID),
	FOREIGN KEY (Winnerid) REFERENCES Teams(TeamID) 
);
INSERT INTO Matches (Team1ID, Team2ID, MatchDate, Venue, WinnerID) VALUES
-- 19 Feb: Pakistan v New Zealand
(8, 7, '2025-02-19 14:00:00', 'National Stadium, Karachi', NULL),
-- 20 Feb: Bangladesh v India
(3, 5, '2025-02-20 14:00:00', 'Dubai International Cricket Stadium, Dubai', NULL),
-- 21 Feb: Afghanistan v South Africa
(1, 9, '2025-02-21 14:00:00', 'National Stadium, Karachi', NULL),
-- 22 Feb: Australia v England
(2, 4, '2025-02-22 14:00:00', 'Gaddafi Stadium, Lahore', NULL),
-- 23 Feb: Pakistan v India
(8, 5, '2025-02-23 14:00:00', 'Dubai International Cricket Stadium, Dubai', NULL),
-- 24 Feb: Bangladesh v New Zealand
(3, 7, '2025-02-24 14:00:00', 'Rawalpindi Cricket Stadium, Rawalpindi', NULL),
-- 25 Feb: Australia v South Africa
(2, 9, '2025-02-25 14:00:00', 'Rawalpindi Cricket Stadium, Rawalpindi', NULL),
-- 26 Feb: Afghanistan v England
(1, 4, '2025-02-26 14:00:00', 'Gaddafi Stadium, Lahore', NULL),
-- 27 Feb: Pakistan v Bangladesh
(8, 3, '2025-02-27 14:00:00', 'Rawalpindi Cricket Stadium, Rawalpindi', NULL),
-- 28 Feb: Afghanistan v Australia
(1, 2, '2025-02-28 14:00:00', 'Gaddafi Stadium, Lahore', NULL),
-- 1 Mar: South Africa v England
(9, 4, '2025-03-01 14:00:00', 'National Stadium, Karachi', NULL),
-- 2 Mar: New Zealand v India
(7, 5, '2025-03-02 14:00:00', 'Dubai International Cricket Stadium, Dubai', NULL);

INSERT INTO Matches (Team1ID, Team2ID, MatchDate, Venue, WinnerID) VALUES
-- 4 MAR : AUSTRALIA VS INDIA
(2,5,'2025-03-04 14:00:00','Dubai International Cricket Stadium, Dubai',NULL),
-- 5 MAR : NEW ZEALAND VS SOUTH AFRICA
(7,9,'2025-03-05 14:00:00','Dubai International Cricket Stadium, Dubai', NULL),
-- 9 MAR : NEW ZEALAND VS INDIA 
(7,5,'2025-03-09 14:00:00','Dubai International Cricket Stadium, Dubai', NULL);


select * from matches ;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 2;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 3;

UPDATE MATCHES
SET WINNERID = TEAM1ID
WHERE MATCHID = 4;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 5;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 7;

UPDATE MATCHES
SET WINNERID = TEAM1ID
WHERE MATCHID = 8;

UPDATE MATCHES
SET WINNERID = TEAM1ID
WHERE MATCHID = 9;

UPDATE MATCHES
SET WINNERID = TEAM1ID
WHERE MATCHID = 11;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 12;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 13;

UPDATE MATCHES
SET WINNERID = TEAM1ID
WHERE MATCHID = 14;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 15;



SHOW COLUMNS FROM Players;

CREATE TABLE PlayerStats (
    StatID INT PRIMARY KEY auto_increment,
    PlayerID  INT,
    MatchID INT,
    Runs INT,
    Wickets INT,
    Catches INT,
    FOREIGN KEY (PLAYERID) REFERENCES Players(PlayerID),
	FOREIGN KEY (MATCHID) REFERENCES Matches(MatchID)
);

DELIMITER //

CREATE PROCEDURE sp_Update_Player_Stats(
    IN PlayerID INT,
    IN MatchID INT,
    IN Runs INT,
    IN Wickets INT,
    IN Catches INT
)
BEGIN
    INSERT INTO PlayerStats (PlayerID, MatchID, Runs, Wickets, Catches) 
    VALUES (PlayerID, MatchID, Runs, Wickets, Catches);
END //

DELIMITER ;
CREATE TABLE Sponsors (
    SponsorID INT PRIMARY KEY AUTO_INCREMENT,
    SponsorName VARCHAR(255),
    Amount DECIMAL(15, 2),  
    TeamID INT NULL, 
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);
INSERT INTO Sponsors (SponsorName, Amount, TeamID) VALUES
('Etisalat', 130000000.00, 1),
('Toyota', 15000000.00, 2),
('Robi Axiata Limited', 57000000.00, 3),
('ECB', 100000000.00, 4),
('Dream11', 430000000.00, 5),
('Failte Solar', 10000000.00, 6),
('ANZ', 250000000.00, 7),
('HBL', 100000000.00, 8),
('Betway', 120000000.00, 9);

select * from sponsors;

DELIMITER // 
CREATE TRIGGER VALIDATE_MATCH_RESULT
BEFORE UPDATE ON MATCHES 
FOR EACH ROW
BEGIN
	IF NEW.WINNERID IS NOT NULL AND NEW.WINNERID NOT IN (NEW.TEAM1ID,NEW.TEAM2ID) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'WINNER MUST BE ONE OF THE PARTICIPATING TEAMS !';
	END IF;
END //

DELIMITER ;

UPDATE MATCHES
SET WINNERID = TEAM2ID
WHERE MATCHID = 1;





-- TOURNAMENT PROGRESS ANALYSIS --

-- Procedure to count wins for each team
DELIMITER //
CREATE PROCEDURE sp_Count_Team_Wins()
BEGIN
    SELECT t.TeamName, COUNT(m.WinnerID) AS Wins
    FROM Teams t
    LEFT JOIN Matches m ON t.TeamID = m.WinnerID
    GROUP BY t.TeamName
    ORDER BY Wins DESC;
END //
DELIMITER ;

-- Procedure to determine tournament stage (group, semi-final, final)
DELIMITER //
CREATE PROCEDURE sp_Determine_Tournament_Stage()
BEGIN
    DECLARE total_matches INT;
    DECLARE completed_matches INT;
    
    SELECT COUNT(*) INTO total_matches FROM Matches;
    SELECT COUNT(*) INTO completed_matches FROM Matches WHERE WinnerID IS NOT NULL;
    
    IF completed_matches = 0 THEN
        SELECT 'Tournament has not started yet' AS Stage;
    ELSEIF completed_matches < total_matches THEN
        SELECT 'Group Stage in progress' AS Stage;
    ELSE
        -- Check if semi-finals and final are completed
        -- This would need more complex logic based on your tournament structure
        SELECT 'Knockout Stage (Semi-Finals or Final)' AS Stage;
    END IF;
END //
DELIMITER ;

-- Procedure to classify teams (qualified, eliminated, in contention)
DELIMITER //
DROP PROCEDURE IF EXISTS sp_Classify_Teams//
CREATE PROCEDURE sp_Classify_Teams()
BEGIN
    -- Use a derived table instead of temporary table
    SELECT 
        t.TeamName, 
        COUNT(m.WinnerID) AS Wins,
        CASE 
            WHEN COUNT(m.WinnerID) >= (SELECT MAX(win_count) FROM 
                (SELECT COUNT(WinnerID) AS win_count FROM Matches GROUP BY WinnerID) AS max_wins) - 1 
            THEN 'Qualified for Semi-Finals'
            WHEN COUNT(m.WinnerID) <= 1 THEN 'Eliminated'
            ELSE 'In Contention'
        END AS Status
    FROM Teams t
    LEFT JOIN Matches m ON t.TeamID = m.WinnerID
    GROUP BY t.TeamID, t.TeamName
    ORDER BY Wins DESC;
END //
DELIMITER ;
DROP PROCEDURE sp_Classify_Teams;
CALL sp_Count_Team_Wins();
CALL sp_Classify_Teams();
CALL sp_Determine_Tournament_Stage();

-- Player Information Updates 

DELIMITER //
CREATE PROCEDURE sp_Update_Player_Information(
    IN p_PlayerID INT,
    IN p_Name VARCHAR(255),
    IN p_Role VARCHAR(50),
    IN p_BattingAvg DECIMAL(5,2),
    IN p_BowlingAvg DECIMAL(5,2)
)
BEGIN
    UPDATE Players
    SET 
        Name = COALESCE(p_Name, Name),
        Role = COALESCE(p_Role, Role),
        BattingAverage = COALESCE(p_BattingAvg, BattingAverage),
        BowlingAverage = COALESCE(p_BowlingAvg, BowlingAverage)
    WHERE PlayerID = p_PlayerID;
    
    SELECT CONCAT('Player ID ', p_PlayerID, ' updated successfully') AS Message;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_Update_Player_Averages()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE player_id INT;
    DECLARE player_name VARCHAR(255);
    DECLARE new_batting_avg DECIMAL(10,2);
    DECLARE new_bowling_avg DECIMAL(10,2);
    
    -- Cursor to iterate through all players
    DECLARE player_cursor CURSOR FOR 
        SELECT PlayerID, Name FROM Players;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN player_cursor;
    
    player_loop: LOOP
        FETCH player_cursor INTO player_id, player_name;
        IF done THEN
            LEAVE player_loop;
        END IF;
        
        -- Calculate new batting average
        SELECT IFNULL(AVG(Runs), 0) INTO new_batting_avg
        FROM PlayerStats
        WHERE PlayerID = player_id AND Runs > 0;
        
        -- Calculate new bowling average (runs per wicket)
        SELECT 
            CASE 
                WHEN SUM(Wickets) = 0 THEN 0
                ELSE SUM(Runs)/SUM(Wickets)
            END INTO new_bowling_avg
        FROM PlayerStats
        WHERE PlayerID = player_id AND Wickets > 0;
        
        -- Update player record if we have new data
        IF new_batting_avg > 0 OR new_bowling_avg > 0 THEN
            UPDATE Players
            SET 
                BattingAverage = CASE WHEN new_batting_avg > 0 THEN new_batting_avg ELSE BattingAverage END,
                BowlingAverage = CASE WHEN new_bowling_avg > 0 THEN new_bowling_avg ELSE BowlingAverage END
            WHERE PlayerID = player_id;
        END IF;
    END LOOP;
    
    CLOSE player_cursor;
    
    SELECT 'Player averages updated successfully' AS Message;
END //
DELIMITER ;
CALL sp_Update_Player_Averages();

-- Function to determine tournament winner
DELIMITER //
CREATE FUNCTION fn_Get_Tournament_Winner() 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE winner_name VARCHAR(255);
    
    -- This is simplified - in a real tournament you'd need more complex logic
    -- to determine the winner based on knockout stages
    SELECT t.TeamName INTO winner_name
    FROM Teams t
    JOIN (
        SELECT WinnerID, COUNT(*) AS Wins
        FROM Matches
        WHERE WinnerID IS NOT NULL
        GROUP BY WinnerID
        ORDER BY Wins DESC
        LIMIT 1
    ) m ON t.TeamID = m.WinnerID;
    
    RETURN IFNULL(winner_name, 'Tournament not completed yet');
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_Declare_Tournament_Winner(IN winner_team_id INT)
BEGIN
    DECLARE team_exists INT;
    
    -- Check if team exists
    SELECT COUNT(*) INTO team_exists FROM Teams WHERE TeamID = winner_team_id;
    
    IF team_exists = 0 THEN
        SELECT 'Invalid Team ID' AS Message;
    ELSE
        -- Update all matches where this team was involved as the winner
        -- This is simplified - in reality you'd only update the final match
        UPDATE Matches
        SET WinnerID = winner_team_id
        WHERE (Team1ID = winner_team_id OR Team2ID = winner_team_id)
        AND WinnerID IS NULL;
        
        SELECT CONCAT('Team ', (SELECT TeamName FROM Teams WHERE TeamID = winner_team_id), 
                     ' declared as tournament winner!') AS Message;
    END IF;
END //
DELIMITER ;

SELECT fn_Get_Tournament_Winner() AS Champion;


-- View for top performing batsmen
CREATE OR REPLACE VIEW vw_Top_Batsmen AS
SELECT p.PlayerID, p.Name, t.TeamName, 
       AVG(ps.Runs) AS BattingAverage,
       SUM(ps.Runs) AS TotalRuns,
       COUNT(ps.MatchID) AS MatchesPlayed
FROM Players p
JOIN PlayerStats ps ON p.PlayerID = ps.PlayerID
JOIN Teams t ON p.TeamID = t.TeamID
WHERE ps.Runs > 0
GROUP BY p.PlayerID, p.Name, t.TeamName
ORDER BY BattingAverage DESC
LIMIT 10;

CREATE OR REPLACE VIEW vw_Top_Bowlers AS
SELECT p.PlayerID, p.Name, t.TeamName,
       SUM(ps.Wickets) AS TotalWickets,
       AVG(CASE WHEN ps.Wickets > 0 THEN ps.Runs/ps.Wickets ELSE NULL END) AS BowlingAverage,
       COUNT(ps.MatchID) AS MatchesPlayed
FROM Players p
JOIN PlayerStats ps ON p.PlayerID = ps.PlayerID
JOIN Teams t ON p.TeamID = t.TeamID
WHERE ps.Wickets > 0
GROUP BY p.PlayerID, p.Name, t.TeamName
ORDER BY TotalWickets DESC, BowlingAverage ASC
LIMIT 10;

CREATE OR REPLACE VIEW vw_Team_Standings AS
SELECT 
    t.TeamName, 
    COUNT(m.WinnerID) AS Wins,
    SUM(CASE WHEN m.Team1ID = t.TeamID OR m.Team2ID = t.TeamID THEN 1 ELSE 0 END) AS MatchesPlayed,
    (SELECT COUNT(*) FROM PlayerStats ps 
     JOIN Players p ON ps.PlayerID = p.PlayerID 
     WHERE p.TeamID = t.TeamID AND ps.Runs > 50) AS HalfCenturies,
    (SELECT COUNT(*) FROM PlayerStats ps 
     JOIN Players p ON ps.PlayerID = p.PlayerID 
     WHERE p.TeamID = t.TeamID AND ps.Runs > 100) AS Centuries,
    (SELECT COUNT(*) FROM PlayerStats ps 
     JOIN Players p ON ps.PlayerID = p.PlayerID 
     WHERE p.TeamID = t.TeamID AND ps.Wickets >= 5) AS FiveWicketHauls
FROM Teams t
LEFT JOIN Matches m ON t.TeamID = m.WinnerID
GROUP BY t.TeamName, t.TeamID
ORDER BY Wins DESC;

SELECT * FROM vw_Top_Batsmen;
SELECT * FROM vw_Top_Bowlers;
select * from vw_Team_Standings;

-- Trigger to validate match updates
DELIMITER //
CREATE TRIGGER trg_Validate_Match_Update
BEFORE UPDATE ON Matches
FOR EACH ROW
BEGIN
    -- Ensure a team isn't playing against itself
    IF NEW.Team1ID = NEW.Team2ID THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A team cannot play against itself';
    END IF;
    
    -- Ensure match date is in the future when inserting
    IF NEW.MatchDate < CURDATE() AND OLD.MatchDate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add a match with past date';
    END IF;
    
    -- Validate winner is one of the playing teams
    IF NEW.WinnerID IS NOT NULL AND NEW.WinnerID NOT IN (NEW.Team1ID, NEW.Team2ID) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Winner must be one of the participating teams';
    END IF;
END //
DELIMITER ;


-- Count wins for each team
CALL sp_Count_Team_Wins();

-- Classify teams based on performance
CALL sp_Classify_Teams();

-- Determine tournament stage
CALL sp_Determine_Tournament_Stage();

-- Get tournament winner
SELECT fn_Get_Tournament_Winner() AS TournamentWinner;

-- Update player information
CALL sp_Update_Player_Information(8, 'Usman Khan', 'Batsman', 45.25, NULL);

-- Update all player averages based on match performance
CALL sp_Update_Player_Averages();

-- View top performers
SELECT * FROM vw_Top_Batsmen;
SELECT * FROM vw_Top_Bowlers;
SELECT * FROM vw_Team_Standings;

-- Declare a tournament winner (would be used after final match)
CALL sp_Declare_Tournament_Winner(5); -- Example: Declare India as winner












