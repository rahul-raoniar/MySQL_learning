# Create shop schema 
CREATE SCHEMA `shop` ;
# Create salary table
DROP TABLE IF EXISTS shop.salary ;
CREATE TABLE shop.salary (
	emp_id INT,
    prior_salary INT,
    current_salary INT
) ;
# Insert values into salary table
INSERT INTO shop.salary (emp_id, prior_salary, current_salary)
VALUES 
(2,	40000,	44000),
(4,	20000,	25000),
(6,	35000,	40000),
(8,	45000,	45000),
(10,	50000,	53000),
(12,	42000,	43000),
(14,	38000,	42000),
(16,	28000,	35000),
(18,	49000,	56000),
(20,	52000,	58000) ;

DROP TABLE IF EXISTS shop.employees ; 
CREATE TABLE shop.employees (
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth date,
    email VARCHAR(50),
    contact_no VARCHAR(20),
    hire_date date,
    notice_period tinyint(1) DEFAULT FALSE,
    np_end date
) ;
INSERT INTO shop.employees (first_name, last_name, date_of_birth, email, contact_no, hire_date, notice_period, np_end)
VALUES 
('Amelia', 'Taylor', '1985-05-10', 'ameliataylor@fruitshop.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT),
('Lee', 'Hart', '1975-08-16', 'leehart@fruitshop.com', '07891011121', DEFAULT, DEFAULT, DEFAULT),
('Abby', 'McCarthy', '1992-02-05', 'abbymccarthy@fruitshop.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT),
('Graham', 'Ford', '1989-07-13', 'grahamford@fruitshop.com', '07894657360', DEFAULT, True, DEFAULT),
('Shreya', 'Felix', '1985-05-10', 'shreyafelix@fruitshop.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT),
('Rishi', 'Stokes', '1985-05-10', 'rishistokes@fruitshop.com', '07765432100', DEFAULT, True, DEFAULT),
('Daniel', 'Fisher', '1973-09-01', 'danielfisher@fruitshop.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT),
('Rebecca', 'Robson', '1994-04-08', 'rebeccarobson@fruitshop.com', '01234567890', '2021-04-29', DEFAULT, DEFAULT),
('Tony', 'Robson', '1994-04-08', 'tonyrobson@fruitshop.com', '01257667890', '2021-04-29', DEFAULT, DEFAULT),
('Sally', 'Richards', '1990-11-12', 'sallyrichard@fruitshop.com', '07812121212', DEFAULT, DEFAULT, DEFAULT);