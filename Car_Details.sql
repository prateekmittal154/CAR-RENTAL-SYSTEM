CREATE TABLE CAR_TYPES(

TYPE_ID NUMBER(10) PRIMARY KEY,
TYPE_NAME VARCHAR2(25)

);

INSERT INTO CAR_TYPES VALUES ( 1, 'Hatchback');
INSERT INTO CAR_TYPES VALUES ( 2, 'Mini');
INSERT INTO CAR_TYPES VALUES ( 3, 'Sedan');
INSERT INTO CAR_TYPES VALUES ( 4, 'SUV');

CREATE TABLE CAR_DETAILS(
REG_NO Varchar2(100) PRIMARY KEY,
MANUFACTURER_NAME_MDL VARCHAR2(100),
COMPANY_NAME varchar2(100) REFERENCES,
CAR_TYPE varchar2(100) REFERENCES CAR_TYPES(TYPE_ID),
CURRENT_STATUS VARCHAR2(30) CHECK IN (BKD,UNBKD) , DEFAULT 'UNBKD'
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
VALUES("HR10JD0932","MARUTI SUZUKI","Shammi Services","MINI","UNBKD");
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
VALUES("DL02HX0923","FORD","Shammi Services","Hatchback","UNBKD");
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


