-- creating the Vehicle Table

CREATE TABLE Vehicle(
    VehicleID int NOT NULL,
    Model varchar(50),
    Vehicle_Capacity int,
    start_place varchar(100),
    end_place varchar(100),
    CONSTRAINT Vehicle_PK PRIMARY KEY(VehicleID)
);

--Create table for BUS

CREATE TABLE Bus(
    VehicleID int NOT NULL,
    BusRate decimal(2,1) default 1.4,
    License_Plate_Num varchar(6),
    RouteNo int,
    CONSTRAINT Bus_PK PRIMARY KEY(VehicleID),
    CONSTRAINT Bus_FK1 FOREIGN KEY(VehicleID) REFERENCES Vehicle(VehicleID)
);

-- Create Table For Subway

CREATE TABLE Subway(
    VehicleID int NOT NULL,
    SubwayType varchar(20),
    TicketPrice decimal(2,1) default 2.4,
    CONSTRAINT Subway_PK PRIMARY KEY(VehicleID),
    CONSTRAINT Subway_FK1 FOREIGN KEY(VehicleID) REFERENCES Vehicle(VehicleID)
);

-- Create table for Scanner

CREATE TABLE Scanner(
    ScannerID varchar(10) NOT NULL,
    Location varchar(50)
    CONSTRAINT ScannerCheck CHECK (Location IN ('Train Station','Subway','Bus')),
    Date_of_Manufacture date,
    Date_of_Installation date,
    CONSTRAINT Scanner_PK PRIMARY KEY(ScannerID)
);

-- Create Table for Subway Scanner

CREATE TABLE SubwayScanner(
    ScannerID varchar(10) NOT NULL,
    VehicleID int,
    CONSTRAINT TrainScanner_PK PRIMARY KEY(ScannerID),
    CONSTRAINT SubScanner_FK1 FOREIGN KEY(VehicleID) REFERENCES Subway(VehicleID),
    CONSTRAINT SubScanner_FK2 FOREIGN KEY(ScannerID) REFERENCES Scanner(ScannerID)
);

-- Create Table for Bus Scanner

create TABLE BusScanner(
    ScannerID varchar(10) NOT NULL,
    VehicleID int,
    CONSTRAINT BusScanner_PK PRIMARY KEY(ScannerID),
    CONSTRAINT BusScanner_FK1 FOREIGN KEY(VehicleID) REFERENCES Bus(VehicleID),
    CONSTRAINT BusScanner_FK2 FOREIGN KEY(ScannerID) REFERENCES Scanner(ScannerID)
);

--Create Table for Train Station

create table TrainStation(
    StationCode int NOT NULL,
    StationName varchar(30),
    CommuteType varchar(30),
    StreetName varchar(30),
    PostalCode int,
    Constraint TrainStation_pk primary key (StationCode)
);

--Create Table for StationScanner

CREATE TABLE StationScanner(
    ScannerID varchar(10) NOT NULL,
    StationCode int,
    CONSTRAINT trainScanner1_PK PRIMARY KEY(ScannerID),
    CONSTRAINT trainstScanner_FK1 FOREIGN KEY(StationCode) REFERENCES TrainStation(StationCode),
    CONSTRAINT trainstScanner_FK2 FOREIGN KEY(ScannerID) REFERENCES Scanner(ScannerID)
);

--create Table for Pass Generator

create table PassGenerator(
    GeneratorID int NOT NULL,
    StationCode int,
    Location varchar(50),
    PRIMARY KEY(GeneratorID),
    FOREIGN KEY(StationCode) REFERENCES TrainStation(StationCode)
);

-- Create Table for Pass

create table Pass(
    PassID int NOT NULL,
    GeneratorID int,
    Balance money,
    ExpiryDate date,
    PassType varchar(30),
	CONSTRAINT PassTypeCheck Check (PassType IN('1-Day Pass' , '7-Day Pass' , 'MonthlyLink Pass' , 'MonthlyLocal Pass','Charlie Card')),
    CONSTRAINT PASS_PK PRIMARY KEY(PassID),
    CONSTRAINT PASS_FK FOREIGN KEY(GeneratorID) REFERENCES PassGenerator(GeneratorID)
);

-- Create Table for Quarter

create table Quarter(
    QuarterID varchar(20),
    Q_StartDate date,
    Q_endDate date,
    Quarter_type varchar(255),
    CONSTRAINT QuarterCheck CHECK (Quarter_type IN('Spring' ,'Summer' , 'Fall' , 'Winter' )),
    CONSTRAINT QUARTER_PK PRIMARY KEY(QuarterID)
);

--Create Table Transactions

create table Transactions(
    TransactionID int NOT NULL,
    PassID int,
    ScannerID varchar(10),
    TransactionDate date,
    QuarterID varchar(20),
    TransactionTime time,
    Amount money,
    CONSTRAINT TRANSACTION_PK PRIMARY KEY(TransactionID),
    CONSTRAINT TRANSACTION_FK1 FOREIGN KEY(PassID) REFERENCES Pass(PassID),
    CONSTRAINT TRANSACTION_FK2 FOREIGN KEY(ScannerID) REFERENCES Scanner(ScannerID),
    CONSTRAINT TRANSACTION_FK3 FOREIGN KEY(QuarterId) REFERENCES Quarter(QuarterId)
);

--Create Table Department
create table Department(
    DepartmentID int IDENTITY(10,1) not NULL,
    Dept_Location varchar(255) ,
    Job_Description varchar(255),
    CONSTRAINT Department_Pk primary key (DepartmentID),
);

-- Create Table Employee

create table Employee(
    EmployeeID int identity(100,1) not NULL,
    SSN int not NULL,
    FirstName varchar(255),
    LastName varchar(255),
    ContactNumber INT,
    DateOfBirth DATE,
    StartDate DATE,
    LastDate DATE,
    StreetName varchar(255),
    City VARCHAR(255) DEFAULT 'Boston',
    Country varchar(255) ,
    PostalCode INT,
    DepartmentID INT,
    CONSTRAINT Employee_PK primary key (EmployeeID),
    Constraint Department_FK FOREIGN key (DepartmentID) references Department(DepartmentID)
);

-- Create Table Expense

create Table Expense(
    ExpenseID int identity(1,1) not NULL,
    QuarterID varchar(20),
    InvoiceNumber INT,
    BillingDate DATE,
    Bill_Amount Decimal(10,3),
    Bill_Type varchar(255) ,
    Constraint Bill_Type_chk Check( Bill_Type in ('Electricity','Fuel&Energy','Salary')),
    CONSTRAINT Expense_PK primary key (ExpenseId) ,
    CONSTRAINT quarter_fk FOREIGN key (QuarterID) REFERENCES Quarter(QuarterID),
);

-- Create table for electricity

create table electricity(
    ExpenseID INT not null,
    UnitsUsed INT,
    ChargePerUnit decimal(5,2) default '0.1',
    StationCode int,
    constraint electricity_pk PRIMARY KEY (ExpenseID),
    CONSTRAINT electricity_fk FOREIGN key (ExpenseID) REFERENCES Expense(ExpenseID),
    constraint electricity_fk2 FOREIGN key (StationCode) REFERENCES TrainStation(StationCode),
);

--Creating Table for Fuel&Energy
 create table [FuelEnergy](
    ExpenseID int not null,
    VehicleID int,
    ChargeType varchar(255),
    UnitsUsed INT,
    ChargePerUnit decimal(5,2),
    constraint ExpenseID_pk PRIMARY KEY (ExpenseID),
    CONSTRAINT fuel_fk FOREIGN key (ExpenseID) REFERENCES Expense(ExpenseID),
    Constraint fuel_fk2 FOREIGN key  (VehicleID) REFERENCES Vehicle(VehicleID)
 );

 -- Create Table Salary

  create table [Salary](
     ExpenseID INT not null,
     EmployeeID int,
     SalaryStartDate DATE,
     SalaryEndDate DATE,
     NumberOfHours DECIMAL,
     Wage decimal DEFAULT 1.0,
     constraint salary_pk PRIMARY KEY (ExpenseID),
    CONSTRAINT salary_fk FOREIGN key (ExpenseID) REFERENCES Expense(ExpenseID),
    CONSTRAINT salary_fk2 FOREIGN key (EmployeeID) references Employee(EmployeeID)
 );