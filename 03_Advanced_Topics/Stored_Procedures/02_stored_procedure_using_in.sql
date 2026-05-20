-- Write a stored_procedure which returns the list of employees based on their salary
DELIMITER //
CREATE PROCEDURE sp_empbySalary(IN VAR INT)
BEGIN
SELECT name, age, salary
FROM Employee
ORDER BY salary
LIMIT VAR;
END //
DELIMITER ;

CALL sp_empbySalary(5);


-- Write a stored_procedure which update the salary of employees, then call it to update the salary of Employee 
-- Mary to 80,000
DELIMITER //
CREATE PROCEDURE update_salary(IN temp_name VARCHAR(20), IN new_salary INT)
BEGIN
UPDATE Employee
SET salary = new_salary
WHERE name = temp_name;
END //
DELIMITER ;

CALL update_salary('Mary', 80000);