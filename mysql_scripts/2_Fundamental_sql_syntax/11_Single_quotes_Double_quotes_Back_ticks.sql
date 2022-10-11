SELECT 'hello',
	   "Goodbye",
       'Hello',
       "I'm having a great time learning SQL!",
       'My teacher said, "Keep going, never give up!',
       'They\'re over there shouting, "Help, Help!"',   # use \ escape character
       'They\'re over there shouting, "Help, Help!"' As `Our Column Name`;

-- Back-ticks can used fpr column name, table name and schema name
SELECT * FROM `world`.`country`;