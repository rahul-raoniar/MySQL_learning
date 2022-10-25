USE sakila;

-- DATE_ADD(): Add dates or add interval of 5 days with NOW() using (INTERVAL)
-- DATE_SUB(): Deduct datetime 
-- ADDTIME(): Add hour minute and seconds time (datetime)
-- SUBTIME(): substract datetime
-- DATEDIFF(): returns difference between date (it ignores the time part in calculation)
-- TIMEDIFF(): returns difference between time (returns 838:59:59 when used with NOW())
-- TIMESTAMPADD(): Adds day, time, month as supplied
-- TIMESTAMPDIFF(): substract day, time, month as supplied 
-- UNIX_TIMESTAMP(): Returns from 1970 (as per unix time stamp)
-- SEC_TO_TIME(): converts seconds to time (hh:mm:ss)
-- PERIOD_ADD(): Add two periods
-- PERIOD_DIFF(): Substract two periods
-- LAST_DAY(): returns the dast day of the month

SELECT	rental_date,
		return_date,
        NOW() AS `Date & Time Now`,
        DATE_ADD(NOW(), INTERVAL 5 DAY) AS `Date & Time in Future`,
		DATE_SUB(NOW(), INTERVAL 6 DAY) AS `Date & Time in PAST`,
        ADDTIME(NOW(), '2 03:10:03') AS `Add Time`, # here 2 days
        SUBTIME(NOW(), '03:10:03') AS `Sub Time`,
        DATEDIFF(return_date, rental_date) AS `Date DIFF`,
        TIMEDIFF(return_date, rental_date) AS `TIME DIFF`,
        TIMEDIFF(NOW(), rental_date),
        TIMESTAMPADD(DAY, 3, NOW()) AS `TS Add`,
        TIMESTAMPDIFF(YEAR, 3, rental_date) AS `TS Diff`,
        UNIX_TIMESTAMP(return_date) AS `Unix TS`,
        SEC_TO_TIME(UNIX_TIMESTAMP(return_date)-UNIX_TIMESTAMP(rental_date)) AS `Unix TS Diff`,
        PERIOD_ADD(202101, 11) AS `Period +`,
        PERIOD_DIFF(202305, 202101) AS `Period Diff`, # returns thedifference in months
        LAST_DAY(return_date) AS `Month End`
FROM rental;