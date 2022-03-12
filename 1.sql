create database CAR_RENTAL;

use CAR_RENTAL;
create table locations(
STATE varchar(15) ,
CITY varchar(15) primary key);

use CAR_RENTAL;
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


SELECT * FROM locations
where State="Punjab";


create table SERVICE_PROVIDER(
GSTIN varchar(25) ,
Name varchar(20),
ratings float(5),
location varchar(25),
foreign key(location) references locations(city) on delete cascade
);



insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Amritsar");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Bathinda");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Patiala");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Sangrur");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.2,"Panipat");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.2,"Sonipat");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.2,"Ambala");

insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.1,"Udaipur");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.1,"Bikaner");
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.1,"Varanasi");

insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9,"Amritsar");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9,"Bathinda");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9,"Patiala");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9,"Sangrur");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.2,"Panipat");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.2,"Sonipat");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.2,"Ambala");

insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Udaipur");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Bikaner");

insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Mumbai");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Nagpur");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Panvel");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Varanasi");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"lucknow");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.3,"Aligarh");


insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Ayodhya");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Nashik");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Pune");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Sangrur");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.2,"Panipat");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.2,"Sonipat");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.2,"Ambala");

insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Udaipur");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Bikaner");

insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Mumbai");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Nagpur");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Panvel");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Varanasi");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"lucknow");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Aligarh");


insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Ayodhya");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Nashik");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Pune");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Sangrur");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",3.9,"Panipat");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",3.9,"Sonipat");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",3.9,"Ambala");

insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Udaipur");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Bikaner");

insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Mumbai");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Nagpur");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Panvel");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Varanasi");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"lucknow");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Aligarh");


insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Ayodhya");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Nashik");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Pune");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Sangrur");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Panipat");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Sonipat");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Ambala");

insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Udaipur");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Bikaner");

insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Mumbai");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Nagpur");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Panvel");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Varanasi");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"lucknow");
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",4,"Aligarh");



