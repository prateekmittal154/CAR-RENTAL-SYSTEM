CREATE TABLE Drivers( 
D_ID number(10) PRIMARY KEY,
D_Name varchar2(100),
DOB DATE  NOT NULL,
RATING number(5)
COMPANY_NAME varchar2(100) REFERENCES SERVICE_PROVIDER(Name)
);

INSERT INTO Drivers Values (567, 'Amit', '12-JUN-1992', 4, 'Shammi Services');
INSERT INTO Drivers Values (568, 'Arjun', '12-AUG-1973', 4.9, 'Khanna car Services');
INSERT INTO Drivers Values (569, 'Bhuvan', '11-SEP-1992', 4.5, 'Shinde CarServices');
INSERT INTO Drivers Values (570, 'Salman', '12-OCT-1982', 3.8, 'Gaitonde Services');
INSERT INTO Drivers Values (571, 'Tejinder', '01-JAN-1978', 3.1, 'Khanna car Services');
INSERT INTO Drivers Values (572, 'Laxman', '06-FEB-1969', 3.4, 'Gaitonde Services');
INSERT INTO Drivers Values (573, 'William', '18-AUG-1986', 4.2, 'Shammi Services');
INSERT INTO Drivers Values (574, 'Bhairav', '12-DEC-1997', 4.6, 'Gaitonde Services');
INSERT INTO Drivers Values (575, 'Madhav', '27-JUL-1965', 4.5, 'Khanna car Services');
INSERT INTO Drivers Values (576, 'Aviral', '23-APR-1964', 4.3, 'Shammi Services');
INSERT INTO Drivers Values (577, 'Avii', '28-JUN-1976', 5, 'Shammi Services');
INSERT INTO Drivers Values (578, 'Ambar', '30-MAR-1987', 0.9, 'Shammi Services');
INSERT INTO Drivers Values (579, 'Chakshu', '06-JUN-1986', 2.9, 'Khanna Services');
INSERT INTO Drivers Values (580, 'Chandan', '01-SEP-1992', 3, 'Shammi Services');
INSERT INTO Drivers Values (654, 'Ramu', '10-SEP-1964', 5, 'Shammi Services');
INSERT INTO Drivers Values (654, 'Raj', '31-MAR-1983', 4.1, 'Khanna Services');
INSERT INTO Drivers Values (657, 'Sanju', '12-JUN-1992', 4.2, 'Shammi Services');
INSERT INTO Drivers Values (217, 'Saksham', '12-NOV-1995', 4.4, 'Khanna car Services');
INSERT INTO Drivers Values (437, 'Amrinder', '27-FEB-1993', 4, 'Shinde CarServices');
INSERT INTO Drivers Values (861, 'Ashok', '02-JAN-1968', 3.9, 'Shammi Services');
INSERT INTO Drivers Values (430, 'Amit', '05-APR-1972', 3.7, 'Gaitonde Services');
INSERT INTO Drivers Values (420, 'Ajit', '07-MAY-1985', 1.8, 'Shammi Services');
INSERT INTO Drivers Values (098, 'Sukhchain', '28-AUG-1997', 5, 'Shammi Services');
INSERT INTO Drivers Values (762, 'Yash', '12-OCT-1962', 2.5, 'Shammi Services');
INSERT INTO Drivers Values (763, 'Varun', '30-JUN-1992', 3.8, 'Khanna car Services');
INSERT INTO Drivers Values (764, 'Raju', '01-MAR-1982', 4.9, 'Shinde CarServices');
INSERT INTO Drivers Values (765, 'Ganesh', '01-JUL-1993', 3, 'Khanna Services');
INSERT INTO Drivers Values (766, 'Purushottam', '03-JUN-1987', 2, 'Gaitonde Services');
INSERT INTO Drivers Values (767, 'Danish', '12-JUN-1992', 4, 'Deep Car Services');
INSERT INTO Drivers Values (769, 'Manish', '12-JUL-1998', 3.5, 'Deep Car Services');
 
