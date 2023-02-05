/****** HR DATASET***************************************************************************/
/****** DISCLAIMER: This dataset contains fake data and is for practice purposes only. ******/

/*Create database called 'human_resources'*/

DROP SCHEMA IF EXISTS human_resources;
CREATE SCHEMA human_resources;
USE human_resources;



--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS employees; 
CREATE TABLE employees (
  emp_id CHAR(6) NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  role_id CHAR(3) NOT NULL,
  dept_id CHAR(3) NOT NULL,
  gender CHAR(1),
  dob DATE NOT NULL,
  hire_date DATE NOT NULL,
  exit_date DATE,
  annual_base_sal DECIMAL(8,2) NOT NULL,
  office_id CHAR(3) NOT NULL,  
  PRIMARY KEY (emp_id)
  );
 
--
-- Insert data into `employees`
--

INSERT INTO employees VALUES ('E04167', 'Henry', 'Alvarez', '001', '004', 'M', '1974-05-22', '2005-04-12', NULL, '87158', '008');
INSERT INTO employees VALUES ('E00917', 'Skylar', 'Bell', '001', '002', 'F', '1992-02-13', '2018-03-06', NULL, '255431', '007');
INSERT INTO employees VALUES ('E00187', 'Miles', 'Mehta', '001', '003', 'M', '1958-05-14', '1996-05-02', NULL, '189933', '009');
INSERT INTO employees VALUES ('E00697', 'Jonathan', 'Chavez', '001', '005', 'M', '1993-02-26', '2017-05-11', NULL, '87536', '001');
INSERT INTO employees VALUES ('E04222', 'Quinn', 'Xiong', '001', '002', 'F', '1967-02-15', '2013-09-08', NULL, '73248', '007');
INSERT INTO employees VALUES ('E02875', 'Madeline', 'Shin', '001', '005', 'F', '1974-06-20', '2007-01-09', NULL, '74546', '001');
INSERT INTO employees VALUES ('E01221', 'Eva', 'Figueroa', '001', '007', 'F', '1974-12-05', '2014-05-14', NULL, '61216', '001');
INSERT INTO employees VALUES ('E03474', 'Violet', 'Hall', '001', '005', 'F', '1982-12-09', '2010-12-10', NULL, '97807', '005');
INSERT INTO employees VALUES ('E01970', 'Vivian', 'Barnes', '002', '004', 'F', '1971-10-14', '2021-03-28', NULL, '180687', '010');
INSERT INTO employees VALUES ('E02706', 'Nevaeh', 'Kang', '002', '002', 'F', '1976-11-28', '2021-01-10', NULL, '86538', '004');
INSERT INTO employees VALUES ('E00957', 'Genesis', 'Perry', '002', '007', 'F', '1976-12-07', '2013-07-18', NULL, '149712', '007');
INSERT INTO employees VALUES ('E01631', 'Leilani', 'Yee', '002', '006', 'F', '1975-02-28', '2017-07-12', NULL, '70996', '004');
INSERT INTO employees VALUES ('E01546', 'Maria', 'Hong', '002', '003', 'F', '1979-12-01', '2005-07-31', NULL, '249686', '006');
INSERT INTO employees VALUES ('E03438', 'Asher', 'Morales', '002', '002', 'M', '1970-01-14', '2020-07-10', NULL, '88272', '012');
INSERT INTO employees VALUES ('E04288', 'Ella', 'White', '002', '002', 'F', '1997-01-12', '2020-01-20', NULL, '71359', '010');
INSERT INTO employees VALUES ('E02074', 'Nora', 'Brown', '002', '005', 'F', '1990-10-11', '2014-02-11', NULL, '99575', '002');
INSERT INTO employees VALUES ('E01291', 'Thomas', 'Aguilar', '002', '007', 'M', '1977-09-15', '2021-02-10', NULL, '79882', '010');
INSERT INTO employees VALUES ('E02844', 'Charles', 'Diaz', '002', '007', 'M', '1967-02-07', '2013-11-16', NULL, '124129', '012');
INSERT INTO employees VALUES ('E02810', 'Layla', 'Torres', '002', '003', 'F', '1985-07-22', '2013-02-24', NULL, '157474', '011');
INSERT INTO employees VALUES ('E03300', 'Maria', 'Chin', '002', '006', 'F', '1957-07-05', '2013-09-26', NULL, '50341', '003');
INSERT INTO employees VALUES ('E01141', 'Gianna', 'Williams', '002', '002', 'F', '1995-02-25', '2021-01-28', NULL, '95786', '005');
INSERT INTO employees VALUES ('E04903', 'Skylar', 'Liu', '002', '005', 'F', '1993-01-21', '2020-08-09', NULL, '161203', '004');
INSERT INTO employees VALUES ('E02216', 'Caleb', 'Marquez', '002', '005', 'M', '1993-10-03', '2019-10-15', NULL, '66819', '011');
INSERT INTO employees VALUES ('E03268', 'Emilia', 'Rivera', '002', '002', 'F', '1980-05-02', '2017-11-23', NULL, '96023', '009');
INSERT INTO employees VALUES ('E04379', 'Scarlett', 'Rodriguez', '003', '003', 'F', '1962-11-13', '2007-02-24', NULL, '71699', '008');
INSERT INTO employees VALUES ('E02038', 'Ellie', 'Chung', '003', '006', 'F', '1963-11-12', '2008-08-29', NULL, '157969', '006');
INSERT INTO employees VALUES ('E01258', 'Gabriel', 'Brooks', '003', '005', 'M', '1993-02-13', '2018-12-10', NULL, '84596', '009');
INSERT INTO employees VALUES ('E01234', 'Jack', 'Cheng', '003', '004', 'M', '1980-12-03', '2014-01-16', NULL, '152214', '003');
INSERT INTO employees VALUES ('E04802', 'Lucy', 'Fong', '003', '007', 'F', '1982-07-06', '2011-01-20', NULL, '96719', '004');
INSERT INTO employees VALUES ('E00691', 'Ezekiel', 'Desai', '003', '003', 'M', '1980-02-16', '2003-01-15', NULL, '166599', '001');
INSERT INTO employees VALUES ('E01271', 'Luke', 'Munoz', '003', '002', 'M', '1958-11-30', '2017-08-25', NULL, '169509', '008');
INSERT INTO employees VALUES ('E02838', 'Julia', 'Pham', '003', '002', 'F', '1957-03-30', '2006-03-16', NULL, '83756', '013');
INSERT INTO employees VALUES ('E04871', 'Liam', 'Grant', '003', '004', 'M', '1992-11-03', '2015-03-15', NULL, '93734', '010');
INSERT INTO employees VALUES ('E01713', 'Nolan', 'Guzman', '003', '002', 'M', '1976-01-16', '1999-06-20', NULL, '96997', '012');
INSERT INTO employees VALUES ('E01687', 'Luke', 'Mai', '003', '004', 'M', '1981-09-25', '2007-10-24', NULL, '51630', '003');
INSERT INTO employees VALUES ('E04504', 'Jameson', 'Alvarado', '004', '005', 'M', '1975-01-18', '1999-03-14', NULL, '92897', '012');
INSERT INTO employees VALUES ('E04267', 'Greyson', 'Sanders', '004', '005', 'M', '1994-09-17', '2019-03-06', NULL, '90304', '005');
INSERT INTO employees VALUES ('E00702', 'Nathan', 'Pham', '004', '001', 'M', '1977-02-04', '2006-12-12', NULL, '149537', '001');
INSERT INTO employees VALUES ('E00443', 'Nolan', 'Bui', '004', '005', 'M', '1994-12-24', '2020-05-26', NULL, '67925', '013');
INSERT INTO employees VALUES ('E00673', 'Landon', 'Luu', '005', '005', 'M', '1991-10-25', '2015-07-12', NULL, '215388', '009');
INSERT INTO employees VALUES ('E03574', 'John', 'Moore', '005', '005', 'M', '1970-09-10', '2005-11-08', NULL, '199808', '001');
INSERT INTO employees VALUES ('E02071', 'Mateo', 'Her', '005', '007', 'M', '1978-05-21', '2014-03-02', NULL, '207172', '006');
INSERT INTO employees VALUES ('E04449', 'Miles', 'Hsu', '006', '003', 'M', '1967-01-21', '2014-03-16', NULL, '74552', '004');
INSERT INTO employees VALUES ('E00105', 'Isla', 'Espinoza', '006', '001', 'F', '1984-01-07', '2021-11-16', NULL, '109812', '008');
INSERT INTO employees VALUES ('E01860', 'Jack', 'Edwards', '006', '006', 'M', '1984-10-01', '2008-04-06', NULL, '126856', '007');
INSERT INTO employees VALUES ('E03906', 'Piper', 'Richardson', '006', '007', 'F', '1984-07-26', '2008-01-27', NULL, '80024', '007');
INSERT INTO employees VALUES ('E03664', 'Aria', 'Castro', '007', '002', 'F', '1977-06-12', '2014-03-14', NULL, '113873', '011');
INSERT INTO employees VALUES ('E02802', 'Matthew', 'Chau', '007', '004', 'M', '1969-07-10', '2002-11-16', NULL, '95998', '001');
INSERT INTO employees VALUES ('E02167', 'Lucas', 'Thomas', '007', '001', 'M', '1967-12-24', '2000-04-28', NULL, '115798', '009');
INSERT INTO employees VALUES ('E04029', 'Jayden', 'Jimenez', '007', '004', 'M', '1976-01-22', '2011-09-24', NULL, '102167', '011');
INSERT INTO employees VALUES ('E04130', 'Elias', 'Figueroa', '007', '003', 'M', '1977-10-23', '2021-12-24', NULL, '144754', '010');
INSERT INTO employees VALUES ('E01286', 'Mateo', 'Mendez', '007', '002', 'M', '1975-03-21', '1998-07-14', NULL, '99091', '002');
INSERT INTO employees VALUES ('E01263', 'Adam', 'Espinoza', '007', '002', 'M', '1986-02-08', '2009-04-09', NULL, '60055', '001');
INSERT INTO employees VALUES ('E03419', 'Jade', 'Yi', '008', '007', 'F', '1975-09-29', '2015-07-10', NULL, '63880', '006');
INSERT INTO employees VALUES ('E00386', 'Parker', 'James', '008', '002', 'M', '1977-09-18', '2005-02-05', NULL, '70505', '002');
INSERT INTO employees VALUES ('E04600', 'William', 'Vu', '008', '007', 'M', '1985-03-30', '2013-11-14', NULL, '56037', '013');
INSERT INTO employees VALUES ('E02285', 'Aria', 'Xi', '008', '007', 'F', '1977-11-02', '2002-03-01', NULL, '165181', '001');
INSERT INTO employees VALUES ('E03506', 'Jaxson', 'Mai', '008', '004', 'M', '1974-06-04', '2014-03-08', NULL, '197367', '002');
INSERT INTO employees VALUES ('E03347', 'Rylee', 'Dinh', '009', '002', 'F', '1987-01-02', '2017-02-10', NULL, '60132', '006');
INSERT INTO employees VALUES ('E00431', 'Eliza', 'Hernandez', '009', '005', 'F', '1974-09-10', '2019-07-04', NULL, '76588', '011');
INSERT INTO employees VALUES ('E03251', 'Ruby', 'Medina', '009', '007', 'F', '1972-02-12', '2018-12-18', NULL, '155351', '001');
INSERT INTO employees VALUES ('E04126', 'Dominic', 'Baker', '009', '001', 'M', '1971-02-16', '2020-10-09', NULL, '91853', '005');
INSERT INTO employees VALUES ('E03417', 'Benjamin', 'Moua', '009', '005', 'M', '1982-11-06', '2007-07-02', NULL, '93971', '006');
INSERT INTO employees VALUES ('E00311', 'Scarlett', 'Figueroa', '009', '004', 'F', '1988-12-11', '2016-10-21', NULL, '52811', '009');
INSERT INTO employees VALUES ('E00813', 'Autumn', 'Joseph', '009', '005', 'F', '1983-09-08', '2018-05-09', NULL, '73317', '009');
INSERT INTO employees VALUES ('E03252', 'James', 'Bui', '009', '003', 'M', '1958-12-18', '1998-07-20', NULL, '122753', '006');
INSERT INTO employees VALUES ('E03343', 'Carson', 'Lu', '010', '002', 'M', '1958-09-20', '1996-12-04', NULL, '99354', '003');
INSERT INTO employees VALUES ('E01533', 'Avery', 'Bailey', '010', '007', 'F', '1973-01-15', '1996-05-15', NULL, '86658', '010');
INSERT INTO employees VALUES ('E04136', 'Mason', 'Cao', '010', '003', 'M', '1970-01-14', '2017-09-14', NULL, '74449', '003');
INSERT INTO employees VALUES ('E00163', 'Bella', 'Powell', '010', '003', 'F', '1957-10-08', '2002-03-04', NULL, '175837', '010');
INSERT INTO employees VALUES ('E03717', 'Joseph', 'Ruiz', '010', '002', 'M', '1977-02-12', '2002-02-26', NULL, '75819', '012');
INSERT INTO employees VALUES ('E03189', 'Asher', 'Jackson', '010', '007', 'M', '1972-11-19', '2003-03-25', NULL, '123405', '007');
INSERT INTO employees VALUES ('E00935', 'Joseph', 'Martin', '010', '006', 'M', '1981-04-21', '2016-09-13', NULL, '64847', '009');
INSERT INTO employees VALUES ('E01633', 'Addison', 'Do', '010', '002', 'F', '1976-11-01', '2001-05-30', NULL, '90678', '007');
INSERT INTO employees VALUES ('E00085', 'Isla', 'Wong', '010', '001', 'F', '1966-11-22', '2014-03-16', NULL, '190815', '002');
INSERT INTO employees VALUES ('E04735', 'Nova', 'Coleman', '010', '005', 'F', '1978-01-24', '2006-12-13', NULL, '74738', '009');
INSERT INTO employees VALUES ('E01921', 'Sarah', 'Daniels', '010', '001', 'F', '1967-04-18', '2011-01-09', NULL, '138521', '009');
INSERT INTO employees VALUES ('E02183', 'Sarah', 'Ayala', '010', '007', 'F', '1975-02-16', '2015-06-09', NULL, '41429', '001');
INSERT INTO employees VALUES ('E00308', 'Piper', 'Patterson', '010', '002', 'F', '1977-04-08', '2019-06-19', NULL, '88045', '005');
INSERT INTO employees VALUES ('E03042', 'Ava', 'Nelson', '010', '005', 'F', '1959-06-06', '1992-04-01', NULL, '53809', '010');
INSERT INTO employees VALUES ('E02148', 'Christopher', 'Vega', '010', '002', 'M', '1968-11-14', '2007-10-27', NULL, '106313', '005');
INSERT INTO employees VALUES ('E02031', 'Melody', 'Cooper', '010', '002', 'F', '1978-11-10', '2009-09-04', NULL, '89695', '002');
INSERT INTO employees VALUES ('E03890', 'Nevaeh', 'Jones', '010', '007', 'F', '1991-11-04', '2020-08-20', NULL, '219693', '002');
INSERT INTO employees VALUES ('E00365', 'Jonathan', 'Patel', '010', '006', 'M', '1994-11-09', '2020-02-02', NULL, '115417', '013');
INSERT INTO employees VALUES ('E04458', 'Alexander', 'Bryant', '010', '002', 'M', '1992-06-10', '2021-10-02', NULL, '88758', '001');
INSERT INTO employees VALUES ('E01091', 'Carter', 'Reed', '010', '002', 'M', '1982-11-14', '2005-07-07', NULL, '74412', '001');
INSERT INTO employees VALUES ('E04152', 'Adeline', 'Huang', '010', '002', 'F', '1988-10-16', '2019-12-16', NULL, '99989', '004');
INSERT INTO employees VALUES ('E00672', 'Mila', 'Pena', '010', '004', 'F', '1977-11-18', '2007-12-21', NULL, '93840', '008');
INSERT INTO employees VALUES ('E02166', 'John', 'Soto', '010', '003', 'M', '1962-11-22', '2015-09-23', NULL, '141899', '010');
INSERT INTO employees VALUES ('E02421', 'Jordan', 'Truong', '010', '002', 'M', '1977-08-30', '2014-08-28', NULL, '183161', '009');
INSERT INTO employees VALUES ('E02378', 'Audrey', 'Smith', '010', '002', 'F', '1964-04-26', '1995-10-27', NULL, '70189', '007');
INSERT INTO employees VALUES ('E02939', 'Julian', 'Fong', '010', '002', 'M', '1961-12-25', '2002-11-22', NULL, '80950', '006');
INSERT INTO employees VALUES ('E02761', 'Luca', 'Duong', '010', '004', 'M', '1974-10-26', '2004-06-30', NULL, '120660', '004');
INSERT INTO employees VALUES ('E03560', 'Ayla', 'Ng', '010', '007', 'F', '1976-04-15', '2004-03-20', NULL, '73004', '003');
INSERT INTO employees VALUES ('E02862', 'Peyton', 'Huang', '010', '005', 'F', '1997-01-09', '2021-07-02', NULL, '125633', '003');
INSERT INTO employees VALUES ('E00870', 'Evelyn', 'Liang', '010', '005', 'F', '1982-03-24', '2013-06-26', NULL, '69096', '001');
INSERT INTO employees VALUES ('E03824', 'Penelope', 'Coleman', '010', '003', 'F', '1986-05-26', '2021-08-27', NULL, '48906', '009');
INSERT INTO employees VALUES ('E02206', 'Jose', 'Henderson', '010', '004', 'M', '1981-07-19', '2015-04-17', NULL, '152239', '007');
INSERT INTO employees VALUES ('E01902', 'Eleanor', 'Li', '010', '004', 'F', '1958-10-03', '2003-12-07', NULL, '125807', '005');
INSERT INTO employees VALUES ('E03247', 'Caroline', 'Jenkins', '010', '003', 'F', '1995-07-30', '2018-05-06', NULL, '49011', '005');
INSERT INTO employees VALUES ('E01994', 'Angel', 'Powell', '010', '007', 'M', '1961-01-05', '2008-07-11', NULL, '66521', '001');
INSERT INTO employees VALUES ('E04477', 'Connor', 'Grant', '011', '001', 'M', '1995-07-03', '2021-10-13', NULL, '74077', '001');
INSERT INTO employees VALUES ('E02139', 'Rylee', 'Yu', '011', '001', 'F', '1986-07-16', '2015-09-29', NULL, '178700', '001');
INSERT INTO employees VALUES ('E02333', 'Jaxson', 'Wright', '011', '005', 'M', '1968-03-01', '2010-12-28', NULL, '64417', '007');
INSERT INTO employees VALUES ('E01417', 'Leah', 'Pena', '011', '005', 'F', '1965-11-29', '1994-01-03', NULL, '82872', '008');
INSERT INTO employees VALUES ('E00488', 'Emery', 'Hunter', '011', '007', 'F', '1994-01-18', '2021-07-03', NULL, '82739', '010');
INSERT INTO employees VALUES ('E01466', 'Connor', 'Vang', '011', '007', 'M', '1997-10-24', '2021-07-28', NULL, '46845', '009');
INSERT INTO employees VALUES ('E00816', 'Skylar', 'Watson', '011', '005', 'F', '1994-07-16', '2021-10-08', NULL, '64475', '010');
INSERT INTO employees VALUES ('E00825', 'Anna', 'Molina', '012', '001', 'F', '1981-10-07', '2016-06-12', NULL, '70165', '007');
INSERT INTO employees VALUES ('E02594', 'Ezekiel', 'Kumar', '012', '005', 'M', '1994-02-04', '2017-06-25', NULL, '54775', '007');
INSERT INTO employees VALUES ('E01403', 'Xavier', 'Park', '012', '005', 'M', '1982-02-08', '2020-11-08', NULL, '234469', '004');
INSERT INTO employees VALUES ('E01412', 'Eva', 'Jenkins', '012', '004', 'F', '1967-02-28', '2004-11-10', NULL, '142318', '005');
INSERT INTO employees VALUES ('E03849', 'Evelyn', 'Jung', '012', '007', 'F', '1992-08-09', '2021-02-14', NULL, '48340', '003');
INSERT INTO employees VALUES ('E00725', 'Nova', 'Herrera', '012', '007', 'F', '1977-11-03', '2014-05-10', NULL, '65047', '012');
INSERT INTO employees VALUES ('E00245', 'Benjamin', 'Delgado', '012', '002', 'M', '1958-07-22', '1992-09-28', NULL, '70778', '002');
INSERT INTO employees VALUES ('E02803', 'Eli', 'Soto', '012', '006', 'M', '1984-10-19', '2016-05-02', NULL, '50784', '011');
INSERT INTO employees VALUES ('E00170', 'Hannah', 'Nelson', '013', '006', 'F', '1987-04-19', '2019-09-07', NULL, '70992', '002');
INSERT INTO employees VALUES ('E04533', 'Easton', 'Bailey', '013', '001', 'M', '1993-09-23', '2019-01-25', NULL, '113527', '002');
INSERT INTO employees VALUES ('E03096', 'Kennedy', 'Zhang', '013', '003', 'F', '1959-06-07', '2000-10-27', NULL, '155320', '006');
INSERT INTO employees VALUES ('E00535', 'Nathan', 'Mendez', '013', '005', 'M', '1969-03-07', '2006-10-31', NULL, '120128', '002');
INSERT INTO employees VALUES ('E01064', 'Clara', 'Kang', '013', '005', 'F', '1983-10-07', '2017-03-25', NULL, '135325', '010');
INSERT INTO employees VALUES ('E02017', 'Connor', 'Joseph', '013', '004', 'M', '1972-10-22', '1998-07-22', NULL, '174895', '005');
INSERT INTO employees VALUES ('E00523', 'Daniel', 'Jordan', '013', '005', 'M', '1964-07-14', '1993-07-26', NULL, '69260', '010');
INSERT INTO employees VALUES ('E02783', 'Levi', 'Mendez', '014', '007', 'M', '1983-11-09', '2011-08-23', NULL, '249506', '011');
INSERT INTO employees VALUES ('E03061', 'Vivian', 'Lewis', '014', '006', 'F', '1957-03-25', '2011-09-07', NULL, '104903', '007');
INSERT INTO employees VALUES ('E00402', 'Dominic', 'Guzman', '014', '003', 'M', '1957-01-09', '2004-05-16', NULL, '55499', '008');
INSERT INTO employees VALUES ('E03816', 'Leilani', 'Chow', '014', '004', 'F', '1995-03-16', '2021-02-23', NULL, '199041', '003');
INSERT INTO employees VALUES ('E03875', 'Aurora', 'Simmons', '014', '002', 'F', '1971-06-03', '1995-12-22', NULL, '96475', '002');
INSERT INTO employees VALUES ('E01501', 'Hudson', 'Liu', '014', '002', 'M', '1988-02-14', '2017-11-16', NULL, '110054', '009');
INSERT INTO employees VALUES ('E02254', 'Jaxson', 'Sandoval', '015', '007', 'M', '1961-01-16', '2017-05-03', NULL, '90855', '012');
INSERT INTO employees VALUES ('E04285', 'Riley', 'Padilla', '015', '005', 'F', '1987-12-12', '2013-05-15', NULL, '78940', '009');
INSERT INTO employees VALUES ('E02850', 'Evelyn', 'Dinh', '016', '007', 'F', '1981-08-25', '2018-08-10', NULL, '171173', '007');
INSERT INTO employees VALUES ('E02185', 'Wyatt', 'Rojas', '016', '005', 'M', '1990-12-28', '2013-03-20', NULL, '79921', '002');
INSERT INTO employees VALUES ('E04742', 'Kinsley', 'Vega', '017', '001', 'F', '1989-06-08', '2020-12-16', NULL, '258426', '011');
INSERT INTO employees VALUES ('E03292', 'Cora', 'Evans', '017', '005', 'F', '1977-06-08', '2018-03-26', NULL, '86478', '002');
INSERT INTO employees VALUES ('E03720', 'Dominic', 'Clark', '017', '002', 'M', '1970-09-01', '2012-10-17', NULL, '71476', '010');
INSERT INTO employees VALUES ('E00128', 'Everleigh', 'Espinoza', '017', '004', 'F', '1968-01-11', '2018-01-22', NULL, '176294', '002');
INSERT INTO employees VALUES ('E02072', 'Charles', 'Robinson', '017', '004', 'M', '1996-09-30', '2021-03-12', NULL, '70369', '001');
INSERT INTO employees VALUES ('E02555', 'Landon', 'Lopez', '017', '001', 'M', '1984-03-06', '2008-07-05', NULL, '78056', '012');
INSERT INTO employees VALUES ('E00178', 'Harper', 'Alexander', '017', '007', 'F', '1996-10-24', '2019-10-14', NULL, '79356', '010');
INSERT INTO employees VALUES ('E02489', 'Ethan', 'Clark', '017', '004', 'M', '1989-12-29', '2017-08-04', NULL, '92610', '007');
INSERT INTO employees VALUES ('E00972', 'Amelia', 'Salazar', '017', '003', 'F', '1996-01-25', '2019-04-23', NULL, '59817', '012');
INSERT INTO employees VALUES ('E04127', 'Emery', 'Acosta', '017', '007', 'F', '1980-06-25', '2013-09-11', NULL, '181452', '007');
INSERT INTO employees VALUES ('E00884', 'Camila', 'Silva', '017', '006', 'F', '1958-11-30', '2003-12-01', NULL, '154828', '001');
INSERT INTO employees VALUES ('E02681', 'Caroline', 'Owens', '017', '005', 'F', '1996-07-02', '2021-07-26', NULL, '151108', '010');
INSERT INTO employees VALUES ('E00671', 'Miles', 'Cho', '017', '005', 'M', '1975-07-01', '1999-03-10', NULL, '49404', '003');
INSERT INTO employees VALUES ('E02832', 'Penelope', 'Jordan', '017', '005', 'U', '1996-03-06', '2019-09-27', NULL, '84913', '005');
INSERT INTO employees VALUES ('E03567', 'Silas', 'Chavez', '017', '005', 'M', '1971-05-17', '2008-04-15', NULL, '86431', '007');
INSERT INTO employees VALUES ('E01486', 'Mason', 'Cho', '017', '001', 'M', '1963-12-02', '2011-05-18', NULL, '192213', '005');
INSERT INTO employees VALUES ('E03269', 'Charlotte', 'Chu', '017', '005', 'F', '1972-01-14', '2001-01-23', NULL, '97537', '004');
INSERT INTO employees VALUES ('E00304', 'Dylan', 'Choi', '017', '005', 'M', '1959-02-01', '2012-05-11', NULL, '231141', '003');
INSERT INTO employees VALUES ('E04239', 'Everleigh', 'Ng', '017', '003', 'F', '1971-08-02', '2021-06-10', NULL, '146742', '013');
INSERT INTO employees VALUES ('E04037', 'Roman', 'Martinez', '017', '003', 'M', '1991-07-21', '2015-09-19', NULL, '145846', '008');
INSERT INTO employees VALUES ('E00665', 'David', 'Chu', '017', '002', 'M', '1967-08-19', '1998-09-03', NULL, '86299', '001');
INSERT INTO employees VALUES ('E04112', 'Axel', 'Chu', '017', '005', 'M', '1979-06-04', '2018-05-04', NULL, '59888', '003');
INSERT INTO employees VALUES ('E02464', 'Sophie', 'Silva', '017', '002', 'F', '1994-07-06', '2017-07-06', NULL, '240488', '011');
INSERT INTO employees VALUES ('E02942', 'Daniel', 'Richardson', '017', '002', 'M', '1992-07-03', '2018-05-20', NULL, '184368', '002');
INSERT INTO employees VALUES ('E00769', 'Jose', 'Kang', '017', '002', 'M', '1965-06-29', '1999-04-25', NULL, '95061', '013');
INSERT INTO employees VALUES ('E01095', 'Isla', 'Lai', '017', '003', 'F', '1985-02-18', '2011-12-06', NULL, '225558', '013');
INSERT INTO employees VALUES ('E03904', 'Hunter', 'Ortiz', '018', '003', 'M', '1976-06-10', '2013-01-20', NULL, '86061', '011');
INSERT INTO employees VALUES ('E03749', 'Kennedy', 'Foster', '018', '006', 'F', '1969-06-02', '2013-11-23', NULL, '113135', '002');
INSERT INTO employees VALUES ('E01388', 'Ivy', 'Soto', '019', '002', 'F', '1972-12-02', '1997-10-23', NULL, '91763', '002');
INSERT INTO employees VALUES ('E03719', 'Jack', 'Brown', '019', '006', 'M', '1967-01-26', '2004-12-07', NULL, '40752', '010');
INSERT INTO employees VALUES ('E04917', 'Everleigh', 'Washington', '019', '004', 'F', '1958-02-06', '2001-10-20', NULL, '64057', '010');
INSERT INTO employees VALUES ('E00521', 'Lily', 'Carter', '019', '005', 'F', '1968-02-22', '1998-05-18', NULL, '68268', '010');
INSERT INTO employees VALUES ('E01037', 'Jeremiah', 'Chu', '019', '005', 'M', '1991-08-22', '2020-09-12', NULL, '96567', '013');
INSERT INTO employees VALUES ('E04888', 'Elijah', 'Henry', '019', '005', 'M', '1990-10-16', '2014-01-03', NULL, '127148', '009');
INSERT INTO employees VALUES ('E04800', 'Eli', 'Han', '019', '001', 'M', '1982-09-03', '2016-01-15', NULL, '89984', '004');
INSERT INTO employees VALUES ('E03941', 'Isla', 'Han', '020', '005', 'F', '1964-12-28', '2005-06-18', NULL, '86089', '005');
INSERT INTO employees VALUES ('E03689', 'Wesley', 'Gray', '020', '001', 'M', '1960-06-22', '2003-04-22', NULL, '76906', '001');
INSERT INTO employees VALUES ('E03446', 'Julian', 'Ross', '020', '006', 'M', '1971-09-07', '2020-07-02', NULL, '100099', '009');
INSERT INTO employees VALUES ('E02062', 'Nora', 'Santiago', '021', '001', 'F', '1967-12-10', '1996-06-26', NULL, '48687', '011');
INSERT INTO employees VALUES ('E03737', 'Kennedy', 'Rahman', '021', '004', 'F', '1973-10-10', '2003-02-28', NULL, '211291', '006');
INSERT INTO employees VALUES ('E02121', 'Levi', 'Brown', '021', '007', 'M', '1986-11-29', '2021-12-26', NULL, '75119', '005');
INSERT INTO employees VALUES ('E04207', 'John', 'Contreras', '022', '006', 'M', '1987-08-24', '2011-05-15', NULL, '66889', '007');
INSERT INTO employees VALUES ('E01484', 'Anna', 'Zhu', '022', '005', 'F', '1974-02-09', '2003-08-22', NULL, '82017', '003');
INSERT INTO employees VALUES ('E04545', 'Abigail', 'Mejia', '022', '002', 'F', '1966-12-18', '2005-02-05', NULL, '98581', '011');
INSERT INTO employees VALUES ('E03612', 'Grayson', 'Cooper', '022', '003', 'M', '1958-07-11', '2013-06-29', NULL, '159571', '007');
INSERT INTO employees VALUES ('E00742', 'Cooper', 'Mitchell', '022', '007', 'M', '1979-08-27', '2006-01-31', NULL, '117518', '001');
INSERT INTO employees VALUES ('E01642', 'Mia', 'Lam', '022', '005', 'F', '1973-10-10', '2006-04-18', NULL, '134486', '002');
INSERT INTO employees VALUES ('E01132', 'Aiden', 'Bryant', '023', '007', 'M', '1975-05-30', '2002-10-21', NULL, '70122', '007');
INSERT INTO employees VALUES ('E01281', 'Isaac', 'Mitchell', '023', '005', 'M', '1976-01-10', '2005-06-10', NULL, '67374', '002');
INSERT INTO employees VALUES ('E01839', 'Stella', 'Alexander', '023', '002', 'F', '1970-10-25', '2005-12-10', NULL, '102043', '005');
INSERT INTO employees VALUES ('E03394', 'Joseph', 'Ly', '023', '006', 'M', '1982-08-05', '2009-02-28', NULL, '242919', '006');
INSERT INTO employees VALUES ('E01527', 'Jose', 'Ross', '024', '002', 'M', '1969-06-14', '1992-04-08', NULL, '116878', '009');
INSERT INTO employees VALUES ('E01070', 'Leonardo', 'Martin', '024', '003', 'M', '1971-09-15', '1995-02-16', NULL, '125375', '005');
INSERT INTO employees VALUES ('E03615', 'Daniel', 'Dixon', '025', '002', 'M', '1971-10-15', '1999-10-09', NULL, '95639', '002');
INSERT INTO employees VALUES ('E01232', 'Samantha', 'Foster', '025', '004', 'F', '1988-01-08', '2019-07-27', NULL, '220937', '002');
INSERT INTO employees VALUES ('E01628', 'Jackson', 'Perry', '025', '006', 'M', '1995-11-10', '2019-10-20', NULL, '256420', '010');
INSERT INTO employees VALUES ('E00527', 'Mateo', 'Chu', '025', '002', 'M', '1995-09-25', '2020-04-16', NULL, '71864', '004');
INSERT INTO employees VALUES ('E04413', 'Andrew', 'Thomas', '026', '002', 'M', '1986-09-26', '2016-12-02', NULL, '113781', '007');
INSERT INTO employees VALUES ('E04131', 'Cora', 'Rivera', '026', '006', 'F', '1980-12-20', '2021-01-02', NULL, '94430', '001');
INSERT INTO employees VALUES ('E03547', 'Owen', 'Han', '026', '001', 'M', '1994-04-28', '2017-05-12', NULL, '52069', '006');
INSERT INTO employees VALUES ('E02848', 'Emma', 'Brooks', '026', '007', 'F', '1992-10-12', '2016-12-18', NULL, '89458', '002');
INSERT INTO employees VALUES ('E04798', 'Aurora', 'Ali', '026', '006', 'F', '1992-06-25', '2016-04-24', NULL, '120341', '001');
INSERT INTO employees VALUES ('E01427', 'Mia', 'Cheng', '026', '007', 'F', '1988-10-09', '2015-04-22', NULL, '154941', '010');
INSERT INTO employees VALUES ('E02744', 'Dylan', 'Padilla', '026', '004', 'M', '1991-11-03', '2015-12-09', NULL, '73854', '001');
INSERT INTO employees VALUES ('E00034', 'Caroline', 'Herrera', '026', '006', 'F', '1977-06-05', '2004-08-19', NULL, '121065', '011');
INSERT INTO employees VALUES ('E02112', 'Christian', 'Sanders', '026', '004', 'M', '1977-03-15', '2013-08-07', NULL, '236946', '001');
INSERT INTO employees VALUES ('E01194', 'Samantha', 'Adams', '026', '002', 'F', '1977-04-04', '2013-04-22', NULL, '61773', '001');
INSERT INTO employees VALUES ('E00752', 'Luna', 'Liu', '026', '007', 'F', '1986-12-10', '2014-02-22', NULL, '218530', '013');
INSERT INTO employees VALUES ('E02094', 'Matthew', 'Gupta', '026', '005', 'M', '1977-03-27', '2005-09-18', NULL, '67686', '003');
INSERT INTO employees VALUES ('E03549', 'Mateo', 'Vu', '026', '007', 'M', '1992-08-14', '2016-09-29', NULL, '59100', '006');
INSERT INTO employees VALUES ('E04779', 'Cameron', 'Young', '026', '002', 'M', '1959-09-16', '2016-01-18', NULL, '180994', '001');
INSERT INTO employees VALUES ('E01639', 'Austin', 'Vo', '026', '003', 'M', '1967-05-04', '1995-11-20', NULL, '95409', '010');
INSERT INTO employees VALUES ('E01550', 'Ruby', 'Barnes', '026', '005', 'F', '1995-12-24', '2020-07-01', NULL, '119746', '010');
INSERT INTO employees VALUES ('E01361', 'Emma', 'Hill', '026', '005', 'F', '1968-02-17', '2016-12-27', NULL, '41673', '009');
INSERT INTO employees VALUES ('E04378', 'Ezra', 'Simmons', '026', '005', 'M', '1991-09-29', '2016-05-07', NULL, '71192', '002');
INSERT INTO employees VALUES ('E03025', 'Lucy', 'Alexander', '026', '002', 'F', '1977-02-28', '2014-10-29', NULL, '189420', '001');
INSERT INTO employees VALUES ('E04769', 'Mila', 'Leung', '026', '006', 'F', '1983-12-22', '2007-11-05', NULL, '99017', '003');
INSERT INTO employees VALUES ('E04732', 'Eva', 'Rivera', '026', '007', 'U', '1986-06-01', '2021-04-02', NULL, '151703', '009');
INSERT INTO employees VALUES ('E00941', 'Sophie', 'Ali', '026', '003', 'F', '1967-06-30', '2002-03-28', NULL, '50475', '007');
INSERT INTO employees VALUES ('E01409', 'Jose', 'Molina', '027', '002', 'M', '1982-05-05', '2008-02-28', NULL, '113987', '008');
INSERT INTO employees VALUES ('E00501', 'Melody', 'Ho', '027', '003', 'F', '1967-03-14', '2007-12-02', NULL, '64494', '007');
INSERT INTO employees VALUES ('E04265', 'Natalia', 'Diaz', '027', '002', 'F', '1960-07-11', '2006-10-12', NULL, '79785', '002');
INSERT INTO employees VALUES ('E03830', 'Eva', 'Coleman', '027', '005', 'F', '1985-06-26', '2009-09-20', NULL, '167199', '001');
INSERT INTO employees VALUES ('E04105', 'Theodore', 'Dinh', '027', '005', 'M', '1963-06-05', '1997-11-29', NULL, '99975', '006');
INSERT INTO employees VALUES ('E00013', 'Elena', 'Vang', '028', '003', 'F', '1970-05-30', '2019-02-19', NULL, '55859', '003');
INSERT INTO employees VALUES ('E00644', 'Joshua', 'Gupta', '028', '007', 'M', '1965-07-24', '2017-01-24', NULL, '50994', '006');
INSERT INTO employees VALUES ('E02331', 'Sophia', 'Huynh', '028', '005', 'F', '1967-04-02', '2005-08-09', NULL, '92771', '009');
INSERT INTO employees VALUES ('E04103', 'Isabella', 'Soto', '028', '003', 'F', '1995-02-02', '2021-12-15', NULL, '255369', '012');
INSERT INTO employees VALUES ('E04419', 'Sophia', 'Ahmed', '028', '007', 'F', '1992-11-09', '2015-06-13', NULL, '127972', '001');
INSERT INTO employees VALUES ('E00154', 'Wyatt', 'Chin', '028', '002', 'M', '1979-06-18', '2004-06-07', NULL, '246231', '001');
INSERT INTO employees VALUES ('E02227', 'Sofia', 'Parker', '028', '005', 'F', '1986-08-29', '2014-05-30', NULL, '99080', '005');
INSERT INTO employees VALUES ('E01249', 'Penelope', 'Guerrero', '028', '005', 'F', '1979-09-14', '2009-08-04', NULL, '208415', '001');
INSERT INTO employees VALUES ('E00874', 'Alexander', 'Choi', '028', '006', 'M', '1967-07-01', '1994-09-18', NULL, '102270', '005');
INSERT INTO employees VALUES ('E00626', 'Luna', 'Simmons', '028', '003', 'F', '1994-07-04', '2020-09-04', NULL, '95045', '005');
INSERT INTO employees VALUES ('E00273', 'David', 'Owens', '028', '007', 'M', '1979-09-15', '2004-04-16', NULL, '94246', '002');
INSERT INTO employees VALUES ('E04890', 'Eleanor', 'Chan', '028', '001', 'F', '1973-10-09', '2001-04-02', NULL, '129124', '013');
INSERT INTO employees VALUES ('E01425', 'Anthony', 'Rogers', '028', '002', 'M', '1989-06-15', '2015-06-18', NULL, '205314', '007');
INSERT INTO employees VALUES ('E03383', 'Lincoln', 'Hall', '028', '001', 'M', '1996-05-23', '2020-07-28', NULL, '180664', '005');
INSERT INTO employees VALUES ('E04348', 'Natalia', 'Owens', '028', '004', 'F', '1991-12-12', '2021-01-18', NULL, '104162', '002');
INSERT INTO employees VALUES ('E03081', 'Ayla', 'Brown', '028', '007', 'F', '1973-02-02', '2013-04-15', NULL, '128303', '010');
INSERT INTO employees VALUES ('E00078', 'Eva', 'Garcia', '028', '004', 'F', '1991-10-19', '2021-04-11', NULL, '72235', '008');
INSERT INTO employees VALUES ('E00530', 'Eli', 'Jones', '028', '004', 'M', '1963-01-04', '1999-03-14', NULL, '105086', '002');
INSERT INTO employees VALUES ('E02980', 'Hailey', 'Shin', '028', '004', 'F', '1965-05-24', '2016-10-24', NULL, '176324', '013');
INSERT INTO employees VALUES ('E01309', 'Everleigh', 'Jiang', '028', '001', 'F', '1964-11-17', '2003-05-14', NULL, '173071', '007');
INSERT INTO employees VALUES ('E00233', 'Brooklyn', 'Reyes', '028', '005', 'F', '1986-06-03', '2019-12-19', NULL, '91954', '007');
INSERT INTO employees VALUES ('E04568', 'Rylee', 'Yu', '028', '003', 'F', '1968-10-12', '2011-07-10', NULL, '247022', '003');
INSERT INTO employees VALUES ('E00591', 'Savannah', 'Ali', '028', '004', 'F', '1986-02-03', '2009-02-11', NULL, '157333', '009');
INSERT INTO employees VALUES ('E04931', 'Zoe', 'Romero', '028', '005', 'F', '1990-11-27', '2021-10-05', NULL, '88072', '012');
INSERT INTO employees VALUES ('E00842', 'John', 'Vega', '028', '003', 'M', '1972-12-25', '2004-01-18', NULL, '247939', '011');
INSERT INTO employees VALUES ('E02283', 'Jaxon', 'Park', '028', '005', 'M', '1989-10-22', '2020-07-24', NULL, '69453', '004');
INSERT INTO employees VALUES ('E03908', 'Miles', 'Evans', '028', '005', 'M', '1968-01-02', '1994-10-24', NULL, '87216', '009');
INSERT INTO employees VALUES ('E02791', 'Aubrey', 'Romero', '028', '007', 'F', '1973-09-21', '1998-04-02', NULL, '160832', '010');
INSERT INTO employees VALUES ('E03838', 'Madeline', 'Walker', '028', '003', 'F', '1988-02-28', '2018-06-13', NULL, '77203', '005');
INSERT INTO employees VALUES ('E03344', 'Camila', 'Rogers', '028', '002', 'F', '1995-01-13', '2021-10-21', NULL, '109851', '001');
INSERT INTO employees VALUES ('E00715', 'Elijah', 'Kang', '028', '002', 'M', '1987-01-20', '2011-10-10', NULL, '245482', '001');
INSERT INTO employees VALUES ('E01498', 'Elias', 'Zhang', '028', '005', 'M', '1968-09-24', '2013-07-13', NULL, '83639', '003');
INSERT INTO employees VALUES ('E00692', 'Avery', 'Yee', '028', '005', 'F', '1988-02-13', '2016-05-22', NULL, '44614', '009');
INSERT INTO employees VALUES ('E00306', 'Mateo', 'Williams', '028', '005', 'M', '1982-10-17', '2011-01-22', NULL, '97339', '002');
INSERT INTO employees VALUES ('E00568', 'Ava', 'Garza', '029', '001', 'F', '1995-09-25', '2018-06-25', NULL, '174097', '010');
INSERT INTO employees VALUES ('E00254', 'Samuel', 'Morales', '029', '003', 'M', '1988-12-21', '2015-06-27', NULL, '57008', '010');
INSERT INTO employees VALUES ('E04072', 'Emery', 'Mitchell', '030', '003', 'F', '1974-10-02', '2018-06-02', NULL, '231567', '001');
INSERT INTO employees VALUES ('E03907', 'Camila', 'Watson', '030', '003', 'F', '1990-11-30', '2018-01-02', NULL, '190253', '002');
INSERT INTO employees VALUES ('E02572', 'Luna', 'Sanders', '030', '003', 'F', '1972-09-18', '2006-10-26', NULL, '163099', '005');
INSERT INTO employees VALUES ('E01351', 'Leo', 'Owens', '030', '005', 'M', '1975-08-29', '2020-04-23', NULL, '50069', '001');
INSERT INTO employees VALUES ('E03956', 'Everly', 'Walker', '030', '007', 'F', '1960-12-05', '1999-08-02', NULL, '137995', '002');
INSERT INTO employees VALUES ('E00417', 'Athena', 'Carrillo', '030', '003', 'F', '1983-06-14', '2006-04-06', NULL, '71531', '007');
INSERT INTO employees VALUES ('E03484', 'Logan', 'Rivera', '031', '005', 'M', '1963-09-07', '2002-05-24', NULL, '172787', '011');
INSERT INTO employees VALUES ('E04359', 'Greyson', 'Lam', '031', '001', 'M', '1997-03-22', '2021-02-08', NULL, '198243', '009');
INSERT INTO employees VALUES ('E03440', 'Genesis', 'Navarro', '031', '005', 'F', '1981-06-03', '2009-04-28', NULL, '69803', '008');
INSERT INTO employees VALUES ('E00699', 'Ava', 'Ayala', '031', '005', 'F', '1967-04-26', '2006-08-16', NULL, '159044', '008');
INSERT INTO employees VALUES ('E00976', 'Zoe', 'Rodriguez', '031', '004', 'F', '1957-12-18', '2004-05-23', NULL, '153938', '010');
INSERT INTO employees VALUES ('E03018', 'Autumn', 'Reed', '032', '002', 'F', '1985-01-01', '2017-09-17', NULL, '70770', '009');
INSERT INTO employees VALUES ('E03583', 'Brooks', 'Marquez', '032', '007', 'M', '1961-07-22', '2019-09-24', NULL, '201464', '005');
INSERT INTO employees VALUES ('E02872', 'Liam', 'Jung', '032', '003', 'M', '1983-11-25', '2010-01-14', NULL, '103504', '004');
INSERT INTO employees VALUES ('E01499', 'Jade', 'Rojas', '032', '003', 'F', '1985-01-08', '2019-01-28', NULL, '165927', '010');
INSERT INTO employees VALUES ('E01797', 'Piper', 'Lewis', '032', '002', 'F', '1989-10-07', '2018-12-22', NULL, '83990', '005');
INSERT INTO employees VALUES ('E03864', 'Ella', 'Hunter', '032', '003', 'F', '1971-01-30', '2017-01-18', NULL, '53799', '007');
INSERT INTO employees VALUES ('E00130', 'Paisley', 'Kang', '033', '004', 'F', '1961-09-26', '2017-03-10', NULL, '196951', '003');
INSERT INTO employees VALUES ('E04625', 'Adam', 'Dang', '033', '007', 'M', '1977-11-16', '2002-07-09', NULL, '166331', '006');
INSERT INTO employees VALUES ('E02747', 'Kinsley', 'Acosta', '033', '005', 'F', '1990-07-01', '2020-07-22', NULL, '192749', '005');
INSERT INTO employees VALUES ('E04972', 'Logan', 'Bryant', '033', '006', 'M', '1992-11-14', '2020-07-18', NULL, '148485', '009');
INSERT INTO employees VALUES ('E00586', 'Sadie', 'Washington', '033', '006', 'F', '1993-05-04', '2019-05-24', NULL, '122350', '010');
INSERT INTO employees VALUES ('E04567', 'Madeline', 'Hoang', '033', '005', 'F', '1994-06-04', '2019-10-25', NULL, '50111', '004');
INSERT INTO employees VALUES ('E01848', 'Zoey', 'Jackson', '033', '004', 'F', '1976-12-18', '2008-08-21', NULL, '59067', '009');
INSERT INTO employees VALUES ('E04332', 'Ezra', 'Simmons', '033', '002', 'M', '1984-07-03', '2010-07-01', NULL, '78237', '010');
INSERT INTO employees VALUES ('E03538', 'Jack', 'Brown', '033', '005', 'M', '1982-07-28', '2010-11-04', NULL, '92952', '001');
INSERT INTO employees VALUES ('E01986', 'Wesley', 'Sharma', '033', '005', 'M', '1971-09-13', '1994-02-23', NULL, '122802', '013');
INSERT INTO employees VALUES ('E04116', 'David', 'Barnes', '033', '005', 'M', '1958-12-27', '2013-11-03', NULL, '186503', '007');
INSERT INTO employees VALUES ('E04682', 'Colton', 'Thao', '033', '004', 'M', '1967-07-23', '1995-11-16', NULL, '125936', '006');
INSERT INTO employees VALUES ('E04572', 'Jade', 'Li', '033', '005', 'F', '1975-08-15', '2012-10-26', NULL, '183156', '001');
INSERT INTO employees VALUES ('E03520', 'Nolan', 'Pena', '033', '006', 'M', '1992-07-24', '2018-06-21', NULL, '56154', '012');
INSERT INTO employees VALUES ('E01807', 'Cameron', 'Evans', '033', '002', 'M', '1972-09-11', '2018-12-13', NULL, '63098', '007');
INSERT INTO employees VALUES ('E04342', 'Samantha', 'Barnes', '033', '006', 'F', '1993-12-18', '2017-01-05', NULL, '190401', '007');
INSERT INTO employees VALUES ('E01516', 'Willow', 'Mai', '033', '004', 'F', '1977-07-08', '2003-12-17', NULL, '48345', '004');
INSERT INTO employees VALUES ('E01002', 'Elias', 'Ali', '033', '007', 'M', '1994-05-04', '2021-03-19', NULL, '127543', '013');
INSERT INTO employees VALUES ('E00791', 'Thomas', 'Padilla', '033', '006', 'M', '1965-07-16', '2003-07-26', NULL, '206624', '012');
INSERT INTO employees VALUES ('E00415', 'Leilani', 'Butler', '033', '006', 'F', '1995-01-01', '2021-09-21', NULL, '68728', '010');
INSERT INTO employees VALUES ('E03027', 'Elijah', 'Watson', '033', '007', 'M', '1993-04-02', '2017-03-16', NULL, '151413', '001');
INSERT INTO employees VALUES ('E01525', 'Charlotte', 'Ruiz', '033', '005', 'F', '1990-12-07', '2017-10-02', NULL, '61886', '011');
INSERT INTO employees VALUES ('E00549', 'Isabella', 'Xi', '033', '006', 'F', '1981-10-15', '2013-03-13', NULL, '249270', '001');
INSERT INTO employees VALUES ('E00595', 'Everly', 'Chow', '033', '003', 'F', '1989-01-08', '2018-04-21', NULL, '140402', '003');
INSERT INTO employees VALUES ('E03167', 'Luke', 'Zheng', '033', '004', 'M', '1983-02-02', '2006-11-28', NULL, '161690', '003');
INSERT INTO employees VALUES ('E04959', 'Noah', 'King', '033', '002', 'M', '1966-09-08', '2015-01-27', NULL, '62575', '009');
INSERT INTO employees VALUES ('E04618', 'Mason', 'Zhao', '033', '005', 'M', '1976-04-29', '2021-10-26', NULL, '94790', '006');
INSERT INTO employees VALUES ('E01753', 'Connor', 'Fong', '033', '001', 'M', '1982-07-22', '2018-02-16', NULL, '120905', '001');
INSERT INTO employees VALUES ('E04630', 'Maria', 'Griffin', '033', '006', 'F', '1963-05-01', '2007-04-25', NULL, '129708', '009');
INSERT INTO employees VALUES ('E00670', 'Leonardo', 'Dixon', '033', '007', 'M', '1985-03-20', '2019-09-05', NULL, '49998', '001');
INSERT INTO employees VALUES ('E01584', 'Carter', 'Mejia', '033', '004', 'M', '1993-11-10', '2019-05-09', NULL, '125828', '012');
INSERT INTO employees VALUES ('E03935', 'Cora', 'Jiang', '033', '005', 'F', '1969-01-06', '2008-04-30', NULL, '182202', '002');
INSERT INTO employees VALUES ('E00716', 'John', 'Chow', '033', '006', 'M', '1977-11-26', '2021-03-11', NULL, '135062', '004');
INSERT INTO employees VALUES ('E01116', 'Jaxon', 'Tran', '033', '007', 'M', '1977-08-20', '2007-09-07', NULL, '151027', '013');
INSERT INTO employees VALUES ('E04562', 'Xavier', 'Zheng', '033', '007', 'M', '1991-08-14', '2017-07-22', NULL, '55854', '002');
INSERT INTO employees VALUES ('E02944', 'Joshua', 'Fong', '033', '002', 'M', '1975-08-06', '2012-06-11', NULL, '222941', '003');
INSERT INTO employees VALUES ('E03349', 'Anna', 'Mehta', '033', '005', 'F', '1990-02-04', '2020-01-05', NULL, '78844', '001');
INSERT INTO employees VALUES ('E03325', 'Robert', 'Edwards', '033', '004', 'M', '1960-08-24', '2004-10-11', NULL, '50825', '001');
INSERT INTO employees VALUES ('E03047', 'Gabriella', 'Gupta', '033', '007', 'F', '1981-02-08', '2005-02-15', NULL, '95372', '013');
INSERT INTO employees VALUES ('E03680', 'Elias', 'Alvarado', '033', '005', 'M', '1966-04-22', '2012-01-09', NULL, '146140', '008');
INSERT INTO employees VALUES ('E02855', 'Piper', 'Cheng', '033', '005', 'F', '1960-08-29', '2009-03-15', NULL, '82839', '009');



-- 
-- Data structure for 'offices'
-- 

DROP TABLE IF EXISTS offices; 
CREATE TABLE offices (
  office_id CHAR(3) NOT NULL,
  address_1 VARCHAR(45) NOT NULL,
  address_2 VARCHAR(45),
  district VARCHAR(45),
  city VARCHAR(40) NOT NULL,
  state_province VARCHAR(40),
  country VARCHAR(25) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,  
  PRIMARY KEY (office_id)
  );

-- 
-- Insert data into 'offices'
-- 

INSERT INTO offices VALUES ('002', '505 E 12th St', 'Suite 202', NULL, 'Austin', 'Texas', 'USA', '078701');
INSERT INTO offices VALUES ('013', '1646 Nanjing Rd', NULL, NULL, 'Shanghai', NULL, 'China', '200040');
INSERT INTO offices VALUES ('001', '910 Pine St', 'Suite 382', NULL, 'Seattle', 'Washington', 'USA', '098109');
INSERT INTO offices VALUES ('003', "17 W Chang'an St", NULL, NULL, 'Beijing', NULL, 'China', '100031');
INSERT INTO offices VALUES ('005', '200 W 87th Street', NULL, NULL, 'Chicago', 'Illinois', 'USA', '060620');
INSERT INTO offices VALUES ('004', '280 Shuncheng Ave', NULL, 'Qingyang District', 'Chengdu', 'Sichuan', 'China', '610017');
INSERT INTO offices VALUES ('006', '10 Longhu Xingyuehui', NULL, 'Jiangbei', 'Chongqing', NULL, 'China', '400023');
INSERT INTO offices VALUES ('007', '670 High St', NULL, NULL, 'Columbus', 'Ohio', 'USA', '043215');
INSERT INTO offices VALUES ('008', 'Av. Duque de Caxias, 1905', NULL, 'Cachoeirinha', 'Manaus', NULL, 'Brazil', '069065');
INSERT INTO offices VALUES ('009', '120 2nd St', NULL, NULL, 'Miami', 'Florida', 'USA', '033132');
INSERT INTO offices VALUES ('010', '1625 N Central Ave', NULL, NULL, 'Phoenix', 'Arizona', 'USA', '085004');
INSERT INTO offices VALUES ('011', 'Rua Pompeu Loureiro, 94', NULL, 'Copacabana', 'Rio de Janerio', NULL, 'Brazil', '022061');
INSERT INTO offices VALUES ('012', 'R. Heitor Penteado, 250', NULL, 'Sumarezinho', 'Sao Paulo', NULL, 'Brazil', '005438');


-- 
-- Data structure for 'roles'
-- 

DROP TABLE IF EXISTS roles; 
CREATE TABLE roles (
  role_title VARCHAR(45) NOT NULL,
  role_id CHAR(3) NOT NULL,
  salary_range_min DECIMAL(8,2) NOT NULL,
  salary_range_max DECIMAL(8,2) NOT NULL,
  bonus_perc DECIMAL(3,2),
  PRIMARY KEY (role_id)
  );
  
-- 
-- Insert data into 'roles'
-- 

INSERT INTO roles VALUES('Account Representative', '001', '50000.00', '75000.00', NULL);
INSERT INTO roles VALUES('Analyst', '002', '40000.00', '58000.00', NULL);
INSERT INTO roles VALUES('Analyst II', '003', '51000.00', '75000.00', NULL);
INSERT INTO roles VALUES('Automation Engineer', '004', '75000.00', '105000.00', '0.05');
INSERT INTO roles VALUES('Business Partner', '005', '45000.00', '60000.00', NULL);
INSERT INTO roles VALUES('Cloud Infrastructure Architect', '006', '65000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Computer Systems Manager', '007', '60000.00', '95000.00', NULL);
INSERT INTO roles VALUES('Controls Engineer', '008', '85000.00', '115000.00', '0.1');
INSERT INTO roles VALUES('Development Engineer', '009', '60000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Director', '010', '150000.00', '200000.00', '0.2');
INSERT INTO roles VALUES('Engineering Manager', '011', '80000.00', '120000.00', '0.1');
INSERT INTO roles VALUES('Enterprise Architect', '012', '71000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('Field Engineer', '013', '70000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('HRIS Analyst', '014', '50000.00', '75000.00', NULL);
INSERT INTO roles VALUES('IT Coordinator', '015', '40000.00', '55000.00', NULL);
INSERT INTO roles VALUES('IT Systems Architect', '016', '65000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Manager', '017', '100000.00', '130000.00', '0.1');
INSERT INTO roles VALUES('Network Administrator', '018', '60000.00', '80000.00', NULL);
INSERT INTO roles VALUES('Network Architect', '019', '60000.00', '90000.00', NULL);
INSERT INTO roles VALUES('Network Engineer', '020', '65000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Operations Engineer', '021', '78000.00', '97000.00', '0.05');
INSERT INTO roles VALUES('Quality Engineer', '022', '70000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('Senior Account Representative', '023', '77000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Senior Analyst', '024', '70000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('Senior Business Partner', '025', '85000.00', '100000.00', '0.1');
INSERT INTO roles VALUES('Senior Manager', '026', '120000.00', '165000.00', '0.15');
INSERT INTO roles VALUES('Service Desk Analyst', '027', '64000.00', '93000.00', NULL);
INSERT INTO roles VALUES('Solutions Architect', '028', '83000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('System Administrator', '029', '72000.00', '90000.00', NULL);
INSERT INTO roles VALUES('Systems Analyst', '030', '42000.00', '60000.00', NULL);
INSERT INTO roles VALUES('Technical Architect', '031', '75000.00', '100000.00', '0.05');
INSERT INTO roles VALUES('Test Engineer', '032', '60000.00', '100000.00', NULL);
INSERT INTO roles VALUES('Vice President', '033', '180000.00', '300000.00', '0.25');



-- 
-- Data structure for 'departments'
-- 

DROP TABLE IF EXISTS departments; 
CREATE TABLE departments (
  dept_name VARCHAR(30) NOT NULL,
  dept_id CHAR(3) NOT NULL,
  PRIMARY KEY (dept_id)
  );


-- 
-- Insert data into 'departments'
-- 

INSERT INTO departments VALUES ('Accounting', '001');
INSERT INTO departments VALUES ('Engineering', '002');
INSERT INTO departments VALUES ('Finance', '003');
INSERT INTO departments VALUES ('Human Resources', '004');
INSERT INTO departments VALUES ('IT', '005');
INSERT INTO departments VALUES ('Marketing', '006');
INSERT INTO departments VALUES ('Sales', '007');
