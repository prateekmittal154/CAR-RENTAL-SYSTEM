create database car_rental;

use car_rental;
create table SERVICE_PROVIDER(
GSTIN varchar(25) primary key ,
Name varchar(20),
ratings float(5)

);

insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4);
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9 );

insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3);
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




