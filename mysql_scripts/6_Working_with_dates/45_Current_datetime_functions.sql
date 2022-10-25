USE sakila;

-- CURDATE()/ CURRENT_DATE(): outputs current date
-- CURTIME()/ CURRENT_TIME(): returns current time
-- NOW()/ CURRENT_TIMESTAMP(): returns date and time during 
-- SYSDATE(): returns system date and time when system function was executes
SELECT CURDATE(),
	   CURRENT_DATE(),
       CURTIME(),
       CURRENT_TIME(),
       NOW(),
       CURRENT_TIMESTAMP(),
       SYSDATE(),
       SLEEP(5),
       NOW(),       # Showing when entire query was executed
       SYSDATE()    # SYSDATE() executes after 5 seconds sleep, so it showing 5+ seconds in the output
       
FROM rental
LIMIT 1;