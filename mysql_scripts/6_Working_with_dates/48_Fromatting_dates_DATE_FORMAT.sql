USE sakila;

-- DATE_FORMAT(): to change the datetime foemating

SELECT	return_date,									
		DATE_FORMAT(return_date, '%Y-%m-%d') AS `%Y-%m-%d`,									-- Format as YYYY-MM--DD
        DATE_FORMAT(return_date, '%e/%c/%Y') AS `%e/%c/%Y`,									-- Format as
        DATE_FORMAT(return_date, '%e/%c/%Y %H:%i') AS `%e/%c/%Y %H:%i`,						-- Format as D/M/YYYY HH:MM
        DATE_FORMAT(DATE_ADD(return_date, INTERVAL 5 MONTH), '%d-%b-%y') AS `%d-%b-%y`,  	-- D-MON-YY
        DATE_FORMAT(DATE_SUB(return_date, INTERVAL 6 DAY), '%M %e, %Y') AS 	`%M %e, %Y`,    -- Month D, YYYY
        DATE_FORMAT(ADDTIME(return_date, '2 03:10:03'), '%a %D %b %Y') AS `%a %D %b %Y`,	-- Thu 8th Apr 2021
        DATE_FORMAT(SUBTIME(return_date, '03:10:03'), '%W %D %M %Y %T') AS `%W %D %M %Y %T`	-- Thursday 8th April 2021 11:20:05
FROM rental;		