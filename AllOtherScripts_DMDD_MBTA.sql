-- Stored Procedures (Minimum 3)
-- Procedure for SumOF expense
create procedure SumOFExpense_perQuarter @QuarterID varchar(20) as

BEGIN	

Select  SUM(Bill_Amount) as Total_Expense
from Expense
WHERE QuarterID=@QuarterID

End


exec SumOFExpense_perQuarter 'Fall2022'

--Procedure to calculate Earning per Quarter
create procedure SumOFEarning_perQuarter @QuarterID varchar(20) as

BEGIN	

Select  SUM(Amount) as Total_Earning
from Transactions
WHERE QuarterID=@QuarterID

End

exec SumOFEarning_perQuarter 'Summer2022'

--precedure to Calculate revenue

create procedure CalculteRevenue @Revenue int Output AS
declare @sumExpense INT
declare @sumIncome INT
BEGIN

select @sumExpense= SUM(Bill_Amount) from Expense
select @sumIncome = SUM(Amount) from Transactions

SET @Revenue = @sumExpense-@sumIncome

END

declare @Revenue INT
declare @TotalProfit INT
EXEC CalculteRevenue @Revenue=@TotalProfit output
SELECT @TotalProfit as Profit_earned
PRINT 'The total Revenue is '+ cast(@TotalProfit as varchar)

--Procedure to Find Number of Employees in a department

create procedure EmployeeInDepartment @DepartmentID int AS

BEGIN
select EmployeeID, FirstName, LastName , ContactNumber
FROM Employee
where DepartmentID=@DepartmentID

END

exec EmployeeInDepartment '16'

--Stored Procedure to find Transactions in a particular Quarter 
create procedure Transactions_PerQuarter @quarterID varchar(20) AS

BEGIN
select *
FROM Transactions
where QuarterID=@quarterID

END

exec Transactions_perQuarter 'Summer2022'



--Views
-- creating a views per line

create view Revenue_Red As
select Sum(Amount) as Total_Earning
from Transactions
where ScannerID like '%R%'

create view Revenue_Orange As
select Sum(Amount) as Total_Earning
from Transactions
where ScannerID like '%O%'

create view Revenue_Purple As
select Sum(Amount) as Total_Earning
from Transactions
where ScannerID like '%P%'

create view Revenue_Green As
select Sum(Amount) as Total_Earning
from Transactions
where ScannerID like '%G%'

-- creating a view to see sum of all types of expenses

create view Expense_Sum As
select Bill_Type, Sum(Bill_Amount) as Total_Expense
from Expense
group by Bill_Type


-- --create a view for employee who has worked for more than 5 hours in summer 2022
create view Employeeworkingmorethan5hours AS
select EmployeeID
from
(
    select employeeID, NumberOfHours 
    from Salary s
    join Expense e on s.ExpenseID=e.ExpenseID
    where quarterID='summer2022' 
) as Derived_table

group BY EmployeeID
having sum(NumberOfHours)>=5;

select * from Employeeworkingmorethan5hours

-- View to Find Current Working Employees

create view [EmployeesCurrentlyworking] AS
select *
from Employee
where lastdate is NULL;

select * from EmployeesCurrentlyworking

--77
create VIEW [Top3higestPaidEmployees] AS
select top 3 e.EmployeeID, e.FirstName, e.LastName, max(s.NumberOfHours) as Total_Hours
from Employee e 
JOIN Salary s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID,e.FirstName,e.LastName
ORDER BY max(s.NumberOfHours) DESC;

 select*from Top3higestPaidEmployees

 /*VIEW TO SEE EXPENSE FROM FUEL AND ENERGY FOR A PARTICULAR VEHICLE */
CREATE VIEW [FuelEnergyExpense] AS
select v.VehicleID,f.ChargePerUnit*f.UnitsUsed as Expense
from FuelEnergy f JOIN Vehicle v ON f.VehicleID = v.VehicleID

select * from FuelEnergyExpense;


--DML Trigger (Atleast 1)

CREATE TABLE DeptChangeHistory(
    DeptChangeHistoryID int  not null primary key identity(1,1),
EmployeeID int not null,
OldDepartment int,
NewDepartment int NULL,
ChangeDate datetime null
)
--creating the trigger for EmpDeptChange
Alter TRIGGER EmpDeptChange
   ON  Employee
   for UPDATE
AS 
BEGIN
IF UPDATE(DepartmentID) 
  begin
INSERT INTO  DeptChangeHistory ( 
EmployeeID ,
OldDepartment ,
NewDepartment ,
ChangeDate )
  SELECT d.EmployeeID
  ,d.DepartmentID
  ,i.DepartmentID,
  GETDATE()
   FROM DELETED d join INSERTED i on d.employeeID = i.EmployeeID
end
END
GO

--testing the trigger
select *
from dbo.employee WHERE EmployeeID= 100
update dbo.employee set DepartmentID ='12' WHERE employeeID= 100
select * from [DeptChangeHistory]

--UDF

--UDF function to get the Age of an Employee
create FUNCTION GetAge (@EmployeeID as Int)

RETURNS INT

AS
BEGIN
declare @age INT
select @age= DATEDIFF(YY,dateOfBirth,GETDATE()) from employee e where E.EmployeeID= @EmployeeID
return @age

END

GO

select EmployeeID, DateOfBirth, 
dbo.GetAge(EmployeeID) as Age
from Employee

--UDF Function to get the Number of Working Months

create FUNCTION GetWorkingDays (@EmployeeID as Int)

RETURNS INT

AS
BEGIN
declare @days INT
select @days= DATEDIFF(MM,StartDate,GETDATE()) 

    from employee e 
    where E.EmployeeID= @EmployeeID and E.LastDate is null

SELECT  @days=DATEDIFF(MM,StartDate,LastDate)
 from employee e 
    where E.EmployeeID= @EmployeeID and E.LastDate is not null

return @days

END

GO

select employeeID, StartDate, LastDate,
dbo.GetWorkingDays(EmployeeID) as Months_Worked
from Employee

--Encryption

--Encryption For SSN

create Master KEY
Encryption by PASSWORD = 'MBTA_1234'

SELECT name KeyName,
  symmetric_key_id KeyID,
  key_length KeyLength,
  algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

USE DMDD_MBTA
GO

create Certificate EmployeeSSN
    with subject= 'Employee_SSN_Data';
GO

CREATE symmetric key EmployeeSSN_SM
    with Algorithm = AES_256
    encryption by certificate EmployeeSSN;
GO
SELECT name KeyName, 
    symmetric_key_id KeyID, 
    key_length KeyLength, 
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;



Alter Table Employee
add EncryptSSN varbinary(max)
go

OPEN Symmetric key EmployeeSSN_SM
    decryption by certificate EmployeeSSN;


UPDATE DMDD_MBTA.dbo.Employee SET
EncryptSSN  = ENCRYPTBYKEY(KEY_GUID('EmployeeSSN_SM'),convert(varbinary,SSN))
From DMDD_MBTA.dbo.Employee
go

SELECT *, 
    CONVERT(int, DecryptByKey(EncryptSSN))   
    AS 'Decrypted SSN'  
    From DMDD_MBTA.dbo.Employee 
GO




--Non Clustered Indexes

CREATE NONCLUSTERED INDEX TransactionDetails_IX ON Transactions(TransactionDate)

Create NonClustered Index Employee_IX ON Employee(FirstName,LastName)

Create NonClustered Index Expense_IX ON Expense(QuarterID)

Create NonClustered Index Transactions_IX on Transactions(QuarterID)

Create NonClustered Index Transactions_IX_2 on Transactions(ScannerID)