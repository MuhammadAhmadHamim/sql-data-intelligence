-- Write a stored_procdeure to get the count of total female employees inside the table Employee
DELIMITER //
CREATE PROCEDURE count_employees(OUT total_emp INT) 
BEGIN
SELECT COUNT(*)
FROM Employee
WHERE sex = 'F';
END //
DELIMITER ;

CALL count_employees(@F_emp);
SELECT @F_emp AS Female_Employees;