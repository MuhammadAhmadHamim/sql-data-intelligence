-- Write a stored procedure that returns the list of players who have scored more than 6 goals in a tournament

DELIMITER &&
CREATE PROCEDURE top_players()
BEGIN
SELECT name, country, goals
FROM players
WHERE goals >= 6;   
END &&
DELIMITER ;

CALL top_players();