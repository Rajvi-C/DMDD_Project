--inserting data for the vehicle table

INSERT INTO Vehicle 
VALUES
(8101, 'A1', 40, 'fenway','shrewsbury'),
(8102, 'B3', 40, 'Cambridge', 'Huntington'),
(8103, 'C5', 60,'Charlestown','Fenway'),
(8104, 'V6', 200,'Assembly','Hay Market'),
(8105, 'B7', 300,'Charlestown', 'Roxbury'),
(8106, 'B9', 400,'Copley', 'Symphony'),
(8107, 'K8', 150,'Haynes','Brigham'),
(8108, 'L9', 200,'Heath Street', 'Oak'),
(8109, 'G6', 150,'Dorchester', 'Somerwile'),
(8110, 'P8', 180,'Chelsea', 'Hanging street');

--inserting data for the bus Table

INSERT INTO Bus
VALUES
(8101, 1.4,'6HV8I9',99),
(8102, 1.4,'6HV8O9',09),
(8103, 1.4,'6HV709',80)

--Inserting values for subway table
INSERT INTO Subway
VALUES
(8104,'Green',2.4),
(8105,'Orange',2.4),
(8106,'Red',2.4),
(8107,'Purple',2.4),
(8108,'Green',2.4),
(8109,'Red',2.4),
(8110,'Orange',2.4);

--Inserting values for scanner

INSERT INTO Scanner
VALUES
('G012','Train Station','02/16/2022','09/11/2022'),
('O122','Train Station','03/16/2020','03/08/2021'),
('P343','Train Station','03/11/2010','04/12/2021'),
('R309','Train Station','02/10/2011','04/11/2021'),
('R532','Subway','03/16/2009','07/12/2018'),
('G632','Subway','03/16/2019','08/11/2022'),
('O908','Subway','09/13/2009','03/02/2021'),
('P098','Subway','08/16/2019','02/01/2022'),
('B102','Bus','03/08/2007','11/20/2021'),
('B011','Bus','01/01/2008','04/04/2016'),
('B112','Bus','01/01/2008','04/04/2016'),
('G111',  'Train Station' , '03/11/2000', '03/08/2022'),
('G000' , 'Train Station' , '12/10/2009' , '08/05/2015'),
('G113' , 'Train Station' , '11/29/2016' , '09/07/2020'),
('O114' , 'Train Station' , '05/14/2010' , '12/15/2022'),
('O115' , 'Train Station' , '11/29/2016' , '09/07/2020'),
('O998','Subway','01/01/2001','10/10/2022'),
('O997','Subway','11/01/2001','10/10/2022'),
('O996','Subway','12/02/2001','10/10/2022'),
('G995','Subway','11/14/2011','12/09/2012'),
('G994','Subway','04/15/2010','09/11/2020'),
('G993','Subway','11/21/2005','11/11/2021'),
('P992','Subway','04/08/2012','08/04/2018'),
('P991','Subway','02/08/2016','08/04/2019'),
('P990','Subway','04/05/2004','08/11/2016'),
('R989','Subway','04/07/2005','08/07/2018'),
('R988','Subway','12/09/2012','05/08/2018'),
('R987','Subway','07/08/2006','06/11/2019');

-- inserting table for Subway Scanner

Insert Into SubwayScanner
Values
('G632','8104'),
('O908','8105'),
('R532','8106'),
('P098','8107'),
('O998','8105'),
('O997','8105'),
('O996','8105'),
('G995','8104'),
('G994','8104'),
('G993','8104'),
('R989','8106'),
('R988','8106'),
('R987','8106'),
('P992','8107'),
('P991','8107'),
('P990','8107');

--inserting Data for BusScanner
Insert Into BusScanner
Values
('B102','8101'),
('B011','8102'),
('B112','8103');

-- Inserting Data for TrainStation Table

insert into TrainStation
values('5101','Ruggles','Green','1150 Tremont St','02120');
insert into TrainStation
values('5102','Goverment Center','Green','1 Cambridge St','02114');
insert into TrainStation
values('5103','Downtown Crossing','Purple','Washington St &, Summer Street','02108');
insert into TrainStation
values('5104','North Station','Orange','135 Causeway St','02114');
insert into TrainStation
values('5105','Charles/MGH','Green','Cambridge St ','02108');
insert into TrainStation
values('5106','South Station','Red','700 Atlantic Ave','02110');
insert into TrainStation
values('5107','Haymarket','Green','136 Blackstone St','02109');
insert into TrainStation
values('5108','Green street','Green','150 Green St','02130');
insert into TrainStation
values('5109','Heat Street','Red','boston','02130');
insert into TrainStation
values('5110','Symphony','Green','Huntington Avenue','02115');
insert into TrainStation
values('5111','Fenway','Green','Huntington Avenue','02115');
insert into TrainStation
values('5112','Boylston','Green','Roxbury','02119');
insert into TrainStation
values('5113','Fenway','Green','Heath Street','02221'); 
insert into TrainStation
values('5114','Downtown','Orange','Jamaica Plain','02121');
insert into TrainStation
values('5115','Huntington Ave','Purple','Assembly Row','02115');
insert into TrainStation
values('5116','Symphony','Purple','Boylston','20005');
insert into TrainStation
values('5117','Assembly Row','Red','Downtown','02118');
insert into TrainStation
values('5118','Roxbury','Red','Kenmore','02215');
insert into TrainStation
values('5119','Dorchester','Red','Huntington Avenue','02114');
insert into TrainStation
values('5120','Heath Street','Purple','Oak Grove','02115');

--Inserting Values for StationScanner

insert into StationScanner
VALUES
('G000','5103'),
('O114','5106'),
('G111' , '5112'),
('G113' , '5113'),
('G012' , '5114'),
('R309' , '5115');



--Inserting Values for Pass Generator

insert into PassGenerator
values(301,5101,'Entrance1');
insert into PassGenerator
values(302, 5102 , 'Entrance2');
insert into PassGenerator
values(303, 5103, 'Entrance3');
insert into PassGenerator
values(304,5104, 'Entrance4');
insert into PassGenerator
values(305, 5105,';Entrance5');
insert into PassGenerator
values(306, 5106, 'Exit1');
insert into PassGenerator
values(307,5107,'Exit2');
insert into PassGenerator
values(308, 5108, 'Exit3');
insert into PassGenerator
values(309,5109, 'Exit4')
insert into PassGenerator
values(310, 5109,'Exit5');

-- Inserting Value into the PASS table
insert into Pass
values(901,301,12.34,'09/14/2022','1-Day Pass');
insert into Pass
values(902,302,63.3,'08/17/2022','7-Day Pass');
insert into Pass
VALUES(903,303,5.65 ,'11/12/2022','Charlie Card');
insert into Pass
values(904,304,23.3 ,'12/31/2022','MonthlyLocal Pass');
insert into Pass
values(905,305,76.2,'06/13/2023','Charlie Card');
insert into Pass
values(906,306,34.4, '05/01/2023','MonthlyLink Pass');
insert into Pass
values(907,307,5.5, '01/19/2023','1-Day Pass');
insert into Pass
values(908,308,7.4,'02/01/2023','MonthlyLink Pass');
insert into Pass
values(909,309,19.8, '03/11/2023','7-Day Pass');
insert into Pass
values(910,309, 0.89, '02/12/2023','Charlie Card');


--Inserting Values into Quarter Table


insert into Quarter
values('Summer2020','06/21/2020','09/20/2020','Summer');
insert into Quarter
values('Fall2020','09/21/2020','12/20/2020','Fall');
insert into Quarter
values('Winter2021','12/20/2020','03/19/2021','winter');
insert into Quarter
values('Spring2021','03/19/2021','06/20/2021','Spring');
insert into Quarter
values('Summer2021','06/21/2021','09/20/2021','Summer');
insert into Quarter
values('Fall2021','09/21/2021','12/20/2020','Fall');
insert into Quarter
values('Winter2022','12/20/2022','03/19/2022','Winter');
insert into Quarter
values('Spring2022','03/19/2022','06/20/2022','Spring');
insert into Quarter
values('Summer2022','06/21/2022','09/20/2022','Summer');
insert into Quarter
values('Fall2022','09/21/2022','12/20/2023','Fall');

--Inserting Values into Transactions

insert into Transactions
values(1001,901,'G012','06/21/2020','Summer2022','01:30','12');
insert into Transactions
values(1002,902,'O122','07/23/2020','Summer2022', '8:12','12');
insert into Transactions
values(1003,903, 'P343','06/06/2020','Summer2022', '14:45', '12' );
insert into Transactions
values(1004,904, 'R309','08/21/2020','Summer2022', '23:54', '12');
insert into Transactions
values(1005,905, 'R532','03/30/2021','spring2022', '11:30','10');
insert into Transactions
values(1006,906,'G632','07/03/2020','Summer2022','12:19','12');
insert into Transactions
values(1007,907, 'O908','08/14/2020' ,'Summer2021','13:01','10');
insert into Transactions
values(1008,908, 'P098','03/19/2021', 'Winter2021', '20:09', '12');
insert into Transactions
values(1009,909, 'B102','09/30/2021' ,'Fall2021','09:09','10');
insert into Transactions
values(110,901,'B011','08/14/2020','Summer2022','02:56','12' );
insert into Transactions
values(1011, 901,'B112','08/21/2020','Summer2022','16:23','10');
insert into Transactions
values(1012,902,'G111','07/21/2022','Summer2022', '12:34','12');
insert into Transactions
values(1013,903 ,'G000','07/02/2022','Summer2022','09:23','12');
insert into Transactions
values(1014,904,'G113','08/18/2022','Summer2022','16:09','10');
insert into Transactions
values(1015,905,'O114','07/21/2021','Summer2022','03:23','12');
insert into Transactions
values(1016,906,'O115','06/06/2021','Summer2021','09:12','10');
insert into Transactions
values(1017,907, 'O998','08/21/2020','Summer2022', '23:54', '12');
insert into Transactions
values(1018,908, 'O997','02/28/2021','spring2021', '11:30','10');
insert into Transactions
values(1019,909, 'O996','08/21/2020','Summer2022', '20:54', '12');
insert into Transactions
values(1020,901,'G995','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1021,908,'G994','07/09/2020','Summer2022','21:19','10');
insert into Transactions
values(1022,903,'G993','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1023,908,'P992','07/09/2020','Summer2022','21:19','10');
insert into Transactions
values(1024,902,'P991','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1025,903,'P990','07/09/2020','Spring2022','21:19','12');
insert into Transactions
values(1026,907,'R989','07/09/2020','winter2021','21:19','10');
insert into Transactions
values(1027,906,'R988','07/09/2020','Fall2021','21:19','12');
insert into Transactions
values(1028,905,'R987','07/09/2020','Summer2022','21:19','10');
insert into Transactions
values(1029,902,'G994','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1030,901,'G994','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1031,903,'G994','07/09/2020','Summer2022','21:19','10');
insert into Transactions
values(1032,906,'G994','07/09/2020','Summer2022','21:19','12');
insert into Transactions
values(1033,901,'G994','07/09/2020','Summer2022','21:19','10');
insert into Transactions
values(1034,901,'G994','07/09/2020','Summer2022','03:13','12');
insert into Transactions
values(1035,901,'G994','07/09/2020','Summer2022','01:11','12');
insert into Transactions
values(1036,901,'G994','07/09/2020','Summer2022','04:17','12');
insert into Transactions
values(1037,901,'G994','07/09/2020','Summer2022','11:15','12');
insert into Transactions
values(1038,901,'G994','07/09/2020','Summer2022','01:19','12');
insert into Transactions
values(1039,901,'G994','07/09/2020','Summer2022','05:10','12');
insert into Transactions
values(1040,901,'G994','07/09/2020','Summer2022','22:11','12');
insert into Transactions
values(1041,901,'G994','07/09/2020','Summer2022','05:09','10');
insert into Transactions
values(1042,907,'R989','07/09/2020','summer2022','10:19','10');
insert into Transactions
values(1043,907,'R989','07/09/2020','summer2022','10:10','10');
insert into Transactions
values(1044,903,'P990','07/09/2020','summer2022','09:04','12');
insert into Transactions
values(1045,907, 'O998','08/21/2020','Summer2022', '23:54', '10');
insert into Transactions
values(1046,907, 'R989','08/21/2020','Summer2022', '23:54', '12');
insert into Transactions
values(1047,907, 'P990','08/21/2020','Summer2022', '23:54', '10');
insert into Transactions
values(1048,907, 'R989','08/21/2020','Summer2022', '23:54', '12');
insert into Transactions
values(1049,907, 'P990','08/21/2020','Summer2022', '23:54', '10');
insert into Transactions
values(1050,907, 'R989','08/21/2020','Summer2022', '23:54', '12');

--Insert Values for Department
Insert into Department 
Values('Ruggles','Cleaning')
Insert into Department 
Values('North Station','Helpers')
Insert into Department 
Values('Government Center','Cleaning')
Insert into Department 
Values('Downtown Crossing','Helpers')
Insert into Department 
Values('South Station','Sweepers')
Insert into Department 
Values('Charles MGH','Ticket Supervisor')
Insert into Department 
Values('Downtown Crossing','Ticket Supervisor')
Insert into Department 
Values('Charles MGH','Cleaning')
Insert into Department 
Values('NorthStation','Ticket Supervisor')

--Insert Value for Employee

insert into Employee
VALUES (123456789,'Riddhi','Vora','98176543','09/14/1999','08/7/2022',null,'St Alphonso St','Boston','MA','02120',16)
insert into Employee
VALUES (446789122,'Rajvi','Chokshi','98198116','04/19/2000','01/7/2021',null,'Staniford St','Boston','MA','02114',15)
insert into Employee
VALUES (125789122,'Aditi','Reddy','93462356','03/11/2000','04/18/2020',null,'Park Drive','Boston','MA','02215',14)
insert into Employee
VALUES (125473122,'Satvik','Shetty','98882353','06/01/2000','05/18/2021','10/18/2022','Staniford St','Boston','MA','02123',16)
insert into Employee
VALUES (638089122,'Grishma','Karekar','3427856','07/11/2000','04/18/2021',null,'Cambridge St','Boston','MA','02134',18)
insert into Employee
VALUES (125789122,'Nidhi','Bodar','93462356','03/11/2000','11/18/2021',null,'Mission Hill','Boston','MA','02123',12)
insert into Employee
VALUES (125789122,'Sakshi', 'Mehta','9014312','12/09/1989','4/18/2019','02/19/2022','Parker Hill','Boston','MA','02182',18)
insert into Employee
VALUES (125789122,'Yash','Sakpal','81413706','06/04/1998','08/16/2018',null,'Huntington Road','Boston','MA','02113',15)
insert into Employee
VALUES (125789122,'Pallavi','Mehra','93462356','03/11/2000','09/13/2020',null,'Fenway Road','Boston','MA','02145',16)
insert into Employee
VALUES (786549122,'Dhrashti','Jodhani','9122356','06/11/1999','01/12/2021',null,'St Amber Street','Boston','MA','02156',13)


-- Insert value for Expense

insert into Expense
values ('Fall2022',34567,'09/11/2022','12','Salary')
insert into Expense
values ('Spring2022',12354,'03/22/2022','10','Fuel&Energy')
insert into Expense
values ('Summer2022',45378,'07/18/2022','12','Electricity')
insert into Expense
values ('Spring2022',23890,'02/10/2022','13','Salary')
insert into Expense
values ('Fall2022',12807,'09/29/2022','14','Salary')
insert into Expense
values ('Winter2022',16789,'11/05/2022','12','Electricity')
insert into Expense
values ('Winter2022',15892,'12/29/2022','20','Fuel&Energy')
insert into Expense
values ('Summer2022',67543,'06/23/2022','10','Salary')
insert into Expense
values ('Fall2022',85679,'09/12/2022','13','Fuel&Energy')
insert into Expense
values ('Winter2022',15679,'10/20/2022','11','Electricity')
insert into Expense
values ('Spring2022',78342,'04/19/2022','15','Electricity')
insert into Expense
values ('Summer2022',12981,'07/28/2022','12','Fuel&Energy')
insert into Expense
values ('Winter2022',34528,'12/01/2022','13','Electricity')
insert into Expense
values ('Spring2022',48765,'02/17/2022','10','Salary')
insert into Expense
values ('Summer2022',96785,'06/22/2022','18','Fuel&Energy')
insert into Expense
values ('Fall2022',12867,'10/11/2022','13','Electricity')
insert into Expense
values ('Summer2022',76854,'08/12/2022','5','Salary')
insert into Expense
values ('Spring2022',67907,'03/23/2022','9','Fuel&Energy')
insert into Expense
values ('Winter2022',23412,'11/18/2022','11','Electricity')
insert into Expense
values ('Summer2022',24537,'08/24/2022','18','Salary')--
insert into Expense
values ('Winter2022',90864,'11/30/2022','10','Fuel&Energy')
insert into Expense
values ('Spring2022',65734,'04/19/2022','12','Electricity')
insert into Expense
values ('Fall2022',56123,'12/30/2022','10','Salary')
insert into Expense
values ('Winter2022',25670,'12/09/2022','12','Fuel&Energy')
insert into Expense
values ('Summer2022',11009,'07/08/2022','12','Electricity')
insert into Expense
values ('Spring2022',14389,'04/11/2022','20','Salary')
insert into Expense
values ('Fall2022',45309,'10/16/2022','11','Fuel&Energy')
insert into Expense
values ('Summer2022',67213,'07/16/2022','12','Electricity')
insert into Expense
values ('Spring2022',80976,'03/19/2022','11','Salary')
insert into Expense
values ('Winter2022',58079,'12/19/2022','12','Fuel&Energy')
insert into Expense
values ('Fall2022',67871,'12/11/2022','12','Salary')
insert into Expense
values ('Fall2022',67845,'10/12/2022','13','Salary')
insert into Expense
values ('Fall2022',23410,'11/19/2022','14','Salary')
insert into Expense
values ('Fall2022',22365,'11/22/2022','10','Salary')
insert into Expense
values ('Spring2022',98198,'01/10/2022','10','Salary')
insert into Expense
values ('Spring2022',11606,'02/11/2022','5','Salary')
insert into Expense
values ('Spring2022',76662,'03/12/2022','18','Salary')
insert into Expense
values ('Spring2022',24696,'04/13/2022','10','Salary')
insert into Expense
values ('Summer2022',96191,'05/10/2022','20','Salary')
insert into Expense
values ('Summer2022',24696,'06/11/2022','11','Salary')
insert into Expense
values ('Summer2022',77143,'07/12/2022','12','Salary')
insert into Expense
values ('Summer2022',01918,'08/13/2022','13','Salary')
insert into Expense
values ('Fall2022',67871,'12/11/2022','12','Salary')
insert into Expense
values ('Fall2022',67845,'10/12/2022','13','Salary')
insert into Expense
values ('Fall2022',23410,'11/19/2022','14','Salary')
insert into Expense
values ('Fall2022',22365,'11/22/2022','10','Salary')
insert into Expense
values ('Spring2022',98198,'01/10/2022','10','Salary')
insert into Expense
values ('Spring2022',11606,'02/11/2022','5','Salary')
insert into Expense
values ('Spring2022',76662,'03/12/2022','18','Salary')
insert into Expense
values ('Spring2022',24696,'04/13/2022','10','Salary')
insert into Expense
values ('Summer2022',96191,'05/10/2022','20','Salary')
insert into Expense
values ('Summer2022',24696,'06/11/2022','11','Salary')
insert into Expense
values ('Summer2022',77143,'07/12/2022','12','Salary')
insert into Expense
values ('Summer2022',01918,'08/13/2022','13','Salary')

-- Insert values for table Electricity

Insert into electricity
values (3,120,0.1,5101)
Insert into electricity
values (6,120,0.1,5102)
Insert into electricity
values (10,110,0.1,5103)
Insert into electricity
values (11,150,0.1,5101)
Insert into electricity
values (13,130,0.1,5102)
Insert into electricity
values (16,130,0.1,5103)
Insert into electricity
values (19,110,0.1,5102)
Insert into electricity
values (22,120,0.1,5101)
Insert into electricity
values (25,120,0.1,5102)
Insert into electricity
values (28,120,0.1,5103)

--Insert Values for Fuel &Energy

insert into [FuelEnergy]
 values (2,8104,'Gas Refill',50,0.2)
  insert into [FuelEnergy]
 values (7,8105,'Gas Refill',100,0.2)
  insert into [FuelEnergy]
 values (9,8106,'Petrol Refill',130,0.1)
  insert into [FuelEnergy]
 values (12,8104,'Gas Refill',60,0.2)
  insert into [FuelEnergy]
 values (15,8101,'Gas Refill',90,0.2)
  insert into [FuelEnergy]
 values (18,8102,'Energy Refill',30,0.3)
  insert into [FuelEnergy]
 values (21,8108,'Oil Refill',100,0.1)
  insert into [FuelEnergy]
 values (24,8107,'Gas Refill',60,0.2)
  insert into [FuelEnergy]
 values (27,8105,'Oil Refill',110,0.1)
  insert into [FuelEnergy]
 values (30,8104,'Gas Refill',60,0.2)

 --Insert values Into Salary

  Insert into [Salary]
 Values (1,101,'10/11/2022','10/30/2022',12,1)
 Insert into [Salary]
 Values (4,101,'06/11/2022','06/21/2022',13,1)
 Insert into [Salary]
 Values (5,101,'10/11/2022','10/30/2022',7,2)
 Insert into [Salary]
 Values (8,102,'11/11/2022','11/22/2022',10,1)
 Insert into [Salary]
 Values (14,103,'09/01/2022','09/30/2022',10,1)
 Insert into [Salary]
 Values (17,101,'04/20/2022','05/20/2022',5,1)
 Insert into [Salary]
 Values (20,102,'03/10/2022','04/10/2022',9,2)
 Insert into [Salary]
 Values (23,104,'02/11/2022','02/21/2022',10,1)
 Insert into [Salary]
 Values (26,101,'05/09/2022','05/21/2022',10,2)
 Insert into [Salary]
 Values (29,102,'09/07/2022','09/17/2022',11,1)

  Insert into [Salary]
 Values (31,103,'10/11/2022','10/30/2022',12,1)
 Insert into [Salary]
 Values (32,104,'06/11/2022','06/21/2022',13,1)
 Insert into [Salary]
 Values (33,105,'10/11/2022','10/30/2022',7,2)
 Insert into [Salary]
 Values (34,103,'11/11/2022','11/22/2022',10,1)
 Insert into [Salary]
 Values (35,104,'09/01/2022','09/30/2022',10,1)
 Insert into [Salary]
 Values (36,105,'04/20/2022','05/20/2022',5,1)
 Insert into [Salary]
 Values (37,103,'03/10/2022','04/10/2022',9,2)
 Insert into [Salary]
 Values (38,104,'02/11/2022','02/21/2022',10,1)
 Insert into [Salary]
 Values (39,105,'05/09/2022','05/21/2022',10,2)
 Insert into [Salary]
 Values (40,105,'09/07/2022','09/17/2022',11,1)
 Insert into [Salary]
 Values (41,103,'10/11/2022','10/30/2022',12,1)
 Insert into [Salary]
 Values (42,104,'06/11/2022','06/21/2022',13,1)

 Select * from expense
 where Bill_Type='Salary'