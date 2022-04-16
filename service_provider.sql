
use CAR_RENTAL;
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

create table SERVICE_PROVIDER(
GSTIN varchar(25) ,
Name varchar(20),
ratings float(5),
state varchar(25)
);
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Punjab" );
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Maharashtra" );
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4,"Haryana" );
insert into SERVICE_PROVIDER values("29GSLG1314R9Z6", "Shammi Services",4.2,"Uttar Pradesh" );
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9 ,"Uttar Pradesh");
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",3.9,"Punjab" );
insert into SERVICE_PROVIDER values("7BNWLG5214R9B2", "Khanna car  Services",4.2 ,"Rajastan");
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Uttar Pradesh" );
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Punjab" );
insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Maharashtra" );

insert into SERVICE_PROVIDER values("3KLASLX4567F3", "Deep Car  Services",4.3,"Haryana" );
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4 ,"Punjab");
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Haryana" );
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Rajastan" );
insert into SERVICE_PROVIDER values("8BBPLSLW9637R8", "Gaitonde Services",4,"Maharashtra" );

insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Punjab" );
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Rajastan" );
insert into SERVICE_PROVIDER values("6ASDFSLV3697H8", "Shinde CarServices",3.9,"Haryana" );

select * from SERVICE_PROVIDER
join locations
on
SERVICE_PROVIDER.state=locations.state;