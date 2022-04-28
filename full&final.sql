
create database car_rental;
use car_rental;
create table SERVICE_PROVIDER(
GSTIN varchar(25) primary key ,
Company_Name varchar(20),
ratings float(5)

);

insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4);
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9 );

insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car Services",4.3);
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4);

insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9);



create table states(
SNO int primary key,
GSTIN varchar(25),
state varchar(15),
foreign key (GSTIN) references SERVICE_PROVIDER(GSTIN) ON DELETE cascade);

INSERT INTO states values(1,"29GSLG1314R9Z6","Punjab");
INSERT INTO states values(2,"29GSLG1314R9Z6","Haryana");
INSERT INTO states values(3,"29GSLG1314R9Z6","Maharashtra");  

INSERT INTO states values(4,"7BNWLG5214R9B2", "Rajasthan");
INSERT INTO states values(5,"7BNWLG5214R9B2", "Haryana");
INSERT INTO states values(6,"7BNWLG5214R9B2", "Maharashtra");

INSERT INTO states values(7,"3KLASLX4567F3",  "Maharashtra");
INSERT INTO states values(8,"3KLASLX4567F3",  "Uttar Pradesh");
INSERT INTO states values(9,"3KLASLX4567F3",  "Rajasthan");

INSERT INTO states values(10,"8BBPLSLW9637R8", "Maharashtra");
INSERT INTO states values(11,"8BBPLSLW9637R8", "Punjab");
INSERT INTO states values(12,"8BBPLSLW9637R8", "Haryana");

INSERT INTO states values(13,"6ASDFSLV3697H8",  "Uttar Pradesh");
INSERT INTO states values(15,"6ASDFSLV3697H8",  "Punjab");
INSERT INTO states values(14,"6ASDFSLV3697H8",  "Rajastan");

create table locations(
STATE varchar(15) ,
CITY varchar(15) primary key);

insert into locations values("Punjab", "Amritsar");
insert into locations values("Punjab", "Bathinda");
insert into locations values("Punjab", "Ludhiana");
insert into locations values("Punjab", "Patiala");
insert into locations values("Punjab", "Sangrur");

insert into locations values("Haryana", "Faridabad");
insert into locations values("Haryana", "Panipat");
insert into locations values("Haryana", "Hisar");
insert into locations values("Haryana", "Sonipat");
insert into locations values("Haryana", "Ambala");

insert into locations values("Rajasthan", "Jaipur");
insert into locations values("Rajasthan", "Udaipur");
insert into locations values("Rajasthan", "Jodhpur");
insert into locations values("Rajasthan", "Bikaner");
insert into locations values("Rajasthan", "Ajmer");

insert into locations values("Uttar Pradesh", "Lucknow");
insert into locations values("Uttar Pradesh", "Agra");
insert into locations values("Uttar Pradesh", "Aligarh");
insert into locations values("Uttar Pradesh", "Varanasi");
insert into locations values("Uttar Pradesh", "Ayodhya");

insert into locations values("Maharashtra", "Mumbai");
insert into locations values("Maharashtra", "Pune");
insert into locations values("Maharashtra", "Nagpur");
insert into locations values("Maharashtra", "Nashik");
insert into locations values("Maharashtra", "Panvel");


select * from states
join locations
on
states.state=locations.state;

CREATE TABLE CAR_TYPES(

TYPE_ID int PRIMARY KEY,
TYPE_NAME VARCHAR(25)

);


INSERT INTO CAR_TYPES VALUES ( 1, 'Hatchback');
INSERT INTO CAR_TYPES VALUES ( 2, 'Mini');
INSERT INTO CAR_TYPES VALUES ( 3, 'Sedan');
INSERT INTO CAR_TYPES VALUES ( 4, 'SUV');


CREATE TABLE CAR_DETAILS(
REG_NO Varchar(100) PRIMARY KEY,
MANUFACTURER_NAME_MDL VARCHAR(100),
COMPANY_NAME varchar(100) REFERENCES  SERVICE_PROVIDER(Company_Name) ON DELETE CASCADE,
CAR_TYPE varchar(100) REFERENCES CAR_TYPES(TYPE_ID),
CURRENT_STATUS VARCHAR(30) CHECK (CURRENT_STATUS IN('BKD','UNBKD'))  DEFAULT 'UNBKD'
);

insert into CAR_DETAILS 
VALUES("PB14JD0932","MARUTI SUZUKI","Shammi Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("MH23JD0452","HONDA","Shammi Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("DL02HF0923","FORD","Shammi Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("HR11HF2344","HUNDAYI","Shammi Services","MINI","UNBKD");

insert into CAR_DETAILS 
VALUES("MH14JD0932","MARUTI SUZUKI","Shammi Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB23JD0452","HONDA","Shammi Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("MH11EF6473","FORD","Shammi Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("HR01FK3232","HUNDAYI","Shammi Services","SUV","UNBKD");

insert into CAR_DETAILS 
VALUES("HR14JD0932","MARUTI SUZUKI","Shammi Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("DL23JD0452","HONDA","Shammi Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("MH02HF0923","FORD","Shammi Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB11HF2344","HUNDAYI","Shammi Services","Hatchback","UNBKD");

insert into CAR_DETAILS 
VALUES("DL04FH3242","MARUTI SUZUKI","Shammi Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("HR23JD0452","HONDA","Shammi Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("DL02HF0923","FORD","Shammi Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("MH11HF2344","HUNDAYI","Shammi Services","Sedan","UNBKD");


insert into CAR_DETAILS 
VALUES("MH21FN8429","MARUTI SUZUKI","Khanna car  Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("HR01HF0823","HONDA","Khanna car  Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("DL12JA7532","FORD","Khanna car  Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ14JD0932","HUNDAYI","Khanna car  Services","MINI","UNBKD");

insert into CAR_DETAILS 
VALUES("HR21FN8429","MARUTI SUZUKI","Khanna car  Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH01HF0823","HONDA","Khanna car  Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ12JA7532","FORD","Khanna car  Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("DL14JD0932","HUNDAYI","Khanna car  Services","Hatchback","UNBKD");

insert into CAR_DETAILS 
VALUES("RJ21FN8429","MARUTI SUZUKI","Khanna car  Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("DL01HF0823","HONDA","Khanna car  Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("MH12JA7532","FORD","Khanna car  Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("HR14JD0932","HUNDAYI","Khanna car  Services","SUV","UNBKD");

insert into CAR_DETAILS 
VALUES("RJ02RI8429","MARUTI SUZUKI","Khanna car  Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("DL03OF0823","HONDA","Khanna car  Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH15JF7532","FORD","Khanna car  Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("HR03OY0932","HUNDAYI","Khanna car  Services","Sedan","UNBKD");




insert into CAR_DETAILS 
VALUES("MH10HF7432","MARUTI SUZUKI","Deep Car Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("DL03NK3492","HONDA","Deep Car Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("UP04YW7324","FORD","Deep Car Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ13HF9342","HUNDAYI","Deep Car Services","MINI","UNBKD");

insert into CAR_DETAILS 
VALUES("RJ10HF7432","MARUTI SUZUKI","Deep Car Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("UP03NK3492","HONDA","Deep Car Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("DL04YW7324","FORD","Deep Car Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH13HF9342","HUNDAYI","Deep Car Services","SUV","UNBKD");

insert into CAR_DETAILS 
VALUES("DL10HF7432","MARUTI SUZUKI","Deep Car Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH03NK3492","HONDA","Deep Car Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ04YW7324","FORD","Deep Car Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("UP13HF9342","HUNDAYI","Deep Car Services","Hatchback","UNBKD");

insert into CAR_DETAILS 
VALUES("UP10HF7432","MARUTI SUZUKI","Deep Car Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ03NK3492","HONDA","Deep Car Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH04YW7324","FORD","Deep Car Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("DL13HF9342","HUNDAYI","Deep Car Services","Sedan","UNBKD");


insert into CAR_DETAILS 
VALUES("MH02KD2348","MARUTI SUZUKI","Gaitonde Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("HR03SD3422","HONDA","Gaitonde Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB11RE2345","FORD","Gaitonde Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("DL01ER2342","HUNDAYI","Gaitonde Services","MINI","UNBKD");

insert into CAR_DETAILS 
VALUES("DL02KD2348","MARUTI SUZUKI","Gaitonde Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB03SD3422","HONDA","Gaitonde Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("HR11RE2345","FORD","Gaitonde Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH01ER2342","HUNDAYI","Gaitonde Services","SUV","UNBKD");

insert into CAR_DETAILS 
VALUES("HR02KD2348","MARUTI SUZUKI","Gaitonde Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH03SD3422","HONDA","Gaitonde Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("DL11RE2345","FORD","Gaitonde Services","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB01ER2342","HUNDAYI","Gaitonde Services","Hatchback","UNBKD");

insert into CAR_DETAILS 
VALUES("PB02KD2348","MARUTI SUZUKI","Gaitonde Services","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("DL03SD3422","HONDA","Gaitonde Services","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("MH11RE2345","FORD","Gaitonde Services","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("HR01ER2342","HUNDAYI","Gaitonde Services","Sedan","UNBKD");



insert into CAR_DETAILS 
VALUES("DL13FU3420","MARUTI SUZUKI","Shinde CarServices","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("UP22FN3914","HONDA","Shinde CarServices","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB08FR5643","FORD","Shinde CarServices","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ34JD3489","HUNDAYI","Shinde CarServices","MINI","UNBKD");

insert into CAR_DETAILS 
VALUES("RJ13FU3420","MARUTI SUZUKI","Shinde CarServices","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB22FN3914","HONDA","Shinde CarServices","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("UP08FR5643","FORD","Shinde CarServices","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("DL34JD3489","HUNDAYI","Shinde CarServices","SUV","UNBKD");

insert into CAR_DETAILS 
VALUES("UP13FU3420","MARUTI SUZUKI","Shinde CarServices","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("DL22FN3914","HONDA","Shinde CarServices","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ08FR5643","FORD","Shinde CarServices","Sedan","UNBKD");
insert into CAR_DETAILS 
VALUES("PB34JD3489","HUNDAYI","Shinde CarServices","Hatchback","UNBKD");

insert into CAR_DETAILS 
VALUES("PB13FU3420","MARUTI SUZUKI","Shinde CarServices","SUV","UNBKD");
insert into CAR_DETAILS 
VALUES("RJ22FN3914","HONDA","Shinde CarServices","MINI","UNBKD");
insert into CAR_DETAILS 
VALUES("DL08FR5643","FORD","Shinde CarServices","Hatchback","UNBKD");
insert into CAR_DETAILS 
VALUES("UP34JD3489","HUNDAYI","Shinde CarServices","Sedan","UNBKD");



CREATE TABLE Drivers( 
D_ID int PRIMARY KEY,
D_Name varchar(100),
DOB DATE  NOT NULL,
RATING int,
Company_Name varchar(100) REFERENCES SERVICE_PROVIDER(Company_Name) ON DELETE CASCADE
);



INSERT INTO Drivers Values (567, 'Amit', '1992-12-06', 4, 'Shammi Services');
INSERT INTO Drivers Values (568, 'Arjun', '1973-12-7', 4.9, 'Khanna car Services');
INSERT INTO Drivers Values (569, 'Bhuvan', '1992-11-9', 4.5, 'Shinde CarServices');
INSERT INTO Drivers Values (570, 'Salman', '1982-12-10', 3.8, 'Gaitonde Services');
INSERT INTO Drivers Values (571, 'Tejinder', '1978-01-01', 3.1, 'Khanna car Services');
INSERT INTO Drivers Values (572, 'Laxman', '1969-06-02-', 3.4, 'Gaitonde Services');
INSERT INTO Drivers Values (573, 'William', '1986-1-08', 4.2, 'Shammi Services');
INSERT INTO Drivers Values (574, 'Bhairav', '1997-12-12', 4.6, 'Gaitonde Services');
INSERT INTO Drivers Values (575, 'Madhav', '1965-02-07', 4.5, 'Khanna car Services');
INSERT INTO Drivers Values (576, 'Aviral', '1964-02-17', 4.3, 'Shammi Services');
INSERT INTO Drivers Values (577, 'Avii', '1976-12-06', 5, 'Shammi Services');
INSERT INTO Drivers Values (578, 'Ambar', '1987-03-03', 0.9, 'Shammi Services');
INSERT INTO Drivers Values (579, 'Chakshu', '1986-06-06', 2.9, 'Khanna Services');
INSERT INTO Drivers Values (580, 'Chandan', '1992-01-09', 3, 'Shammi Services');
INSERT INTO Drivers Values (654, 'Ramu', '1964-10-09', 5, 'Shammi Services');
INSERT INTO Drivers Values (655, 'Raj', '1983-03-03', 4.1, 'Khanna Services');
INSERT INTO Drivers Values (657, 'Sanju', '1992-12-06', 4.2, 'Shammi Services');
INSERT INTO Drivers Values (217, 'Saksham', '1995-12-11', 4.4, 'Khanna car Services');
INSERT INTO Drivers Values (437, 'Amrinder', '1993-02-12', 4, 'Shinde CarServices');
INSERT INTO Drivers Values (861, 'Ashok', '1968-12-21', 3.9, 'Shammi Services');
INSERT INTO Drivers Values (430, 'Amit', '1972-05-04', 3.7, 'Gaitonde Services');
INSERT INTO Drivers Values (420, 'Ajit', '1985-07-05', 1.8, 'Shammi Services');
INSERT INTO Drivers Values (098, 'Sukhchain', '1997-12-18', 5, 'Shammi Services');
INSERT INTO Drivers Values (762, 'Yash', '1962-12-10', 2.5, 'Shammi Services');
INSERT INTO Drivers Values (763, 'Varun', '1992-03-06', 3.8, 'Khanna car Services');
INSERT INTO Drivers Values (764, 'Raju', '1982-01-03', 4.9, 'Shinde CarServices');
INSERT INTO Drivers Values (765, 'Ganesh', '1993-01-07', 3, 'Khanna Services');
INSERT INTO Drivers Values (766, 'Purushottam', '1987-03-06', 2, 'Gaitonde Services');
INSERT INTO Drivers Values (767, 'Danish', '1992-12-06', 4, 'Deep Car Services');
INSERT INTO Drivers Values (769, 'Manish', '1998-12-07', 3.5, 'Deep Car Services');



use car_rental;
select * from Drivers;



