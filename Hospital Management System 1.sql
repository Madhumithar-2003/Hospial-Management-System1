#CREATE DATABASE
create database hospital;
use hospital;

#CREATE TABLE 
#TABLE 1
create table patients(
patientID int primary key auto_increment,
Fullname varchar (50) not null,
DOB date,
Gender varchar(10),
contact_number varchar(15),
address varchar (50)
);

DESCRIBE patients;

#ALTER TABLE COLUMNS (EXAMPLE)
alter table patients add column address varchar (50);
alter table patients drop column address;
alter table patients modify column contact_number bigint;
alter table patients rename to patient;
alter table patients change column contact_number contact_no bigint; 
alter table patients modify column Fullname varchar(50) not null;
alter table patients add column age int;

#DROP TABLE (EXAMPLE)
drop table patients;

#TABLE 2
create table doctors(
doctorID int primary key auto_increment,
Fullname varchar(50),
specialization varchar(50),
contact_number varchar(15)
);
alter table doctors modify column Fullname  varchar(50) not null;
DESCRIBE DOCTORS;

#TABLE 3
create table appointements(
appointmentID int primary key auto_increment,
patientID int,
doctorID int,
appointmentdate Datetime,
purpose varchar(50),
Foreign key (patientID) references patients(patientId),
Foreign key (doctorID) references doctors(doctorID)
);

DESCRIBE APPOINTEMENTS;

#RABLE 4
create table bills(
billID int primary key auto_increment,
patientID int,
doctorID int,
totalamount decimal(10,2),
paymentstatus varchar(10),
Foreign key (patientID) references patients(patientID),
Foreign key (doctorID) references doctors(doctorID)
);

DESCRIBE BILLS;

#INSERT VALUES INTO TABLE

INSERT INTO Patients (FullName, DOB, Gender, Contact_number, Address, Age)
VALUES 
('John Doe', '1990-05-15', 'Male', '9876543210', '123 Maple Street, New York, NY', 34),
('Jane Smith', '1985-07-20', 'Female', '8765432109', '456 Elm Avenue, Los Angeles, CA', 39),
('Liam Johnson', '1995-11-10', 'Male', '7654321098', '789 Oak Drive, Chicago, IL', 29),
('Olivia Brown', '1993-04-25', 'Female', '6543210987', '321 Pine Lane, Houston, TX', 31),
('Noah Davis', '1988-09-05', 'Male', '5432109876', '654 Birch Road, Miami, FL', 36),
('Emma Wilson', '2000-12-30', 'Female', '4321098765', '987 Willow Street, Boston, MA', 23),
('Mason Martinez', '1992-03-18', 'Male', '3210987654', '147 Cedar Court, Atlanta, GA', 32),
('Isabella Garcia', '1998-07-07', 'Female', '2109876543', '369 Aspen Blvd, Seattle, WA', 26),
('Ethan Moore', '1987-02-02', 'Male', '1098765432', '753 Cypress Circle, Denver, CO', 37),
('Sophia Taylor', '1991-10-12', 'Female', '9087654321', '258 Poplar Street, Dallas, TX', 33),
('Logan Anderson', '1983-08-09', 'Male', '8076543210', '369 Redwood Ave, Austin, TX', 41),
('Mia Thomas', '1999-01-15', 'Female', '7065432109', '147 Spruce Lane, Orlando, FL', 25),
('Lucas Jackson', '1982-06-20', 'Male', '6054321098', '753 Sequoia Road, Phoenix, AZ', 42),
('Amelia Harris', '2002-05-05', 'Female', '5043210987', '321 Acacia Blvd, San Diego, CA', 22),
('James White', '1996-09-29', 'Male', '4032109876', '456 Alder Circle, Columbus, OH', 28),
('Charlotte Lee', '1997-03-03', 'Female', '3021098765', '789 Magnolia Dr, Detroit, MI', 27),
('Benjamin Martin', '1994-11-21', 'Male', '2010987654', '123 Maple Grove, Kansas City, MO', 30),
('Ava Perez', '1989-07-17', 'Female', '1098765431', '654 Juniper Road, Minneapolis, MN', 35),
('Alexander Young', '2001-04-10', 'Male', '9987654321', '987 Laurel Street, Portland, OR', 23),
('Harper Hall', '2003-02-28', 'Female', '8876543210', '258 Fir Street, Charlotte, NC', 21),
('Harry porter','2003-09-23','Female','7766445522','124 Fir Road,Charlotte',20);

#UPDATE VALUES IN TABLE(EXAMPLE)
update patients set Fullname="madhu" where patientId=3;

#DELETE DATAS IN TABLE
delete from patients where patientID=1;

#RETRIVE THE DATAS
select * from patients;

#INSERT VALUES INTO DOCTOR TABLE

INSERT INTO Doctors (DoctorID, FullName, Specialization, Contact_number) 
VALUES
(1, 'Dr. Emma Brown', 'Cardiology', '9876543210'),
(2, 'Dr. Liam Davis', 'Orthopedics', '8765432109'),
(3, 'Dr. Olivia Johnson', 'Neurology', '7654321098'),
(4, 'Dr. Noah Wilson', 'Pediatrics', '6543210987'),
(5, 'Dr. Ava Martinez', 'Dermatology', '5432109876'),
(6, 'Dr. Mason Lee', 'General Surgery', '4321098765'),
(7, 'Dr. Mia White', 'Psychiatry', '3210987654'),
(8, 'Dr. Lucas Harris', 'Endocrinology', '2109876543'),
(9, 'Dr. Charlotte Clark', 'Gynecology', '1098765432'),
(10, 'Dr. James Young', 'Oncology', '9987654321'),
(11, 'Dr. Benjamin Hall', 'Urology', '8876543210'),
(12, 'Dr. Sophia Walker', 'Pulmonology', '7765432109'),
(13, 'Dr. Ethan Allen', 'Gastroenterology', '6654321098'),
(14, 'Dr. Isabella Baker', 'Nephrology', '5543210987'),
(15, 'Dr. Logan Adams', 'Cardiology', '4432109876'),
(16, 'Dr. Harper Nelson', 'Orthopedics', '3321098765'),
(17, 'Dr. Alexander Perez', 'Neurology', '2210987654'),
(18, 'Dr. Amelia Scott', 'Pediatrics', '1109876543'),
(19, 'Dr. Henry Roberts', 'Dermatology', '9998765432'),
(20, 'Dr. Grace Turner', 'General Surgery', '8887654321'),
(21, 'Dr. Samuel Cooper', 'Psychiatry', '7776543210'),
(22, 'Dr. Zoe Parker', 'Endocrinology', '6665432109'),
(23, 'Dr. Elijah Ward', 'Gynecology', '5554321098'),
(24, 'Dr. Chloe Morgan', 'Oncology', '4443210987'),
(25, 'Dr. Jack Gray', 'Urology', '3332109876'),
(26, 'Dr. Victoria Bell', 'Pulmonology', '2221098765'),
(27, 'Dr. Ella Edwards', 'Gastroenterology', '1110987654'),
(28, 'Dr. Daniel Brooks', 'Nephrology', '1009876543'),
(29, 'Dr. Aria Hayes', 'Ophthalmology', '9871234567'),
(30, 'Dr. William Foster', 'ENT (Otolaryngology)', '8762345678');


#INSERT VALUES INTO APPOINTMENTS TABLE
INSERT INTO appointements (AppointmentID, PatientID, DoctorID, AppointmentDate, Purpose)
VALUES
(1, 3, 1, '2024-12-12', 'Regular Checkup'),
(2, 7, 4, '2024-12-13', 'Pediatric Consultation'),
(3, 10, 2, '2024-12-14', 'Orthopedic Follow-Up'),
(4, 15, 8, '2024-12-15', 'Diabetes Management'),
(5, 20, 6, '2024-12-16', 'General Surgery Review'),
(6, 12, 3, '2024-12-17', 'Neurological Assessment'),
(7, 5, 7, '2024-12-18', 'Psychiatric Evaluation'),
(8, 8, 10, '2024-12-19', 'Oncology Consultation'),
(9, 9, 5, '2024-12-20', 'Dermatology Follow-Up'),
(10, 18, 9, '2024-12-21', 'Gynecology Checkup'),
(11, 11, 13, '2024-12-22', 'Gastrointestinal Review'),
(12, 2, 12, '2024-12-23', 'Pulmonary Checkup'),
(13, 6, 14, '2024-12-24', 'Nephrology Consultation'),
(14, 4, 11, '2024-12-25', 'Urology Checkup'),
(15, 1, 15, '2024-12-26', 'Cardiology Consultation'),
(16, 14, 18, '2024-12-27', 'Pediatric Vaccination'),
(17, 13, 16, '2024-12-28', 'Orthopedic Follow-Up'),
(18, 17, 20, '2024-12-29', 'ENT Consultation'),
(19, 19, 17, '2024-12-30', 'Neurological Follow-Up'),
(20, 16, 19, '2024-12-31', 'Ophthalmology Checkup');

#RETRIVE THE DATA
select * from appointements;

#INSERT VALUES INTO BILLS TABLE
INSERT INTO Bills (PatientID, DoctorID, TotalAmount, PaymentStatus) 
VALUES
(1, 15, 5000.00, 'Paid'),
(2, 12, 3000.00, 'Unpaid'),
(3, 1, 4500.50, 'Paid'),
(4, 11, 7000.00, 'Paid'),
(5, 7, 2000.75, 'Unpaid'),
(6, 14, 3500.00, 'Paid'),
(7, 4, 8000.00, 'Unpaid'),
(8, 10, 1500.00, 'Paid'),
(9, 5, 2200.00, 'Paid'),
(10, 2, 6000.00, 'Unpaid'),
(11, 13, 3300.00, 'Paid'),
(12, 3, 4000.00, 'Unpaid'),
(13, 8, 2500.00, 'Paid'),
(14, 18, 1000.00, 'Paid'),
(15, 6, 500.00, 'Paid'),
(16, 19, 1500.00, 'Unpaid'),
(17, 20, 4500.00, 'Paid'),
(18, 17, 7000.00, 'Unpaid'),
(19, 9, 5000.00, 'Paid'),
(20, 16, 2500.00, 'Paid');

#RETRIVE THE DATA
select * from bills;

select * from patients where patientID=5;
select Fullname,contact_number,address from patients where patientID =5;

select Fullname as name,specialization from doctors;

select distinct totalamount,patientID,doctorID from bills;

select billID,totalamount from bills where billId =5; 

select * from doctors where specialization ='Cardiology';

select * from doctors where specialization in( 'Orthopedics','Neurology' );

#AGGREGATE FUNCTION
select sum(totalamount) from bills;

select count(*) from bills;

select avg(totalamount) from bills;

select max(totalamount) from bills;

select min(totalamount) from bills; 

#GROUPBY CLAUSE
select DoctorID,  SUM(TotalAmount) AS TotalEarnings from bills
group by  DoctorID;

#HAVING CLAUSE
select DoctorID,  SUM(TotalAmount) AS TotalEarnings from bills
group by  DoctorID 
having SUM(TotalAmount) > 5000;

select DoctorID,  SUM(TotalAmount) AS TotalEarnings from bills
group by  DoctorID 
having  COUNT(*) > 2;
 
#JOINS (INNER JOIN)
select   d.DoctorID, d.FullName, d.Specialization, a.AppointmentDate
from  Doctors d inner join  Appointements a
ON   d.DoctorID = a.DoctorID;

#(OUTER JOIN)
#LEFT OUTER JOIN
select d.DoctorID, d.FullName, a.AppointmentDate
from  Doctors d  left join  Appointments a
on  d.DoctorID = a.DoctorID;
   
#RIGHT OUTER JOIN
select    d.DoctorID, d.FullName, a.AppointmentDate
from  Doctors d right join   Appointements a
on  d.DoctorID = a.DoctorID;

STORED PROCEDURE

DELIMITER //

CREATE PROCEDURE AddPatient (
    IN FullName VARCHAR(100), 
    IN DOB DATE, 
    IN Gender VARCHAR(10), 
    IN ContactNumber VARCHAR(15), 
    IN Address TEXT
)
BEGIN
    INSERT INTO Patient (FullName, DOB, Gender, Contact_number, age)
    VALUES (FullName, DOB, Gender, Contact_number, age);
END //

DELIMITER ;

# DROP STORE PROCEDURE
drop procedure addpatient;

#ADD VALUES BY STORE PROCEDURE
call addpatient("jully","2005-01-06","female",2534567891,43);
select * from patient;


DELIMITER  //
create procedure getspecialization(
    IN _specialization varchar(50)
)
BEGIN
    select Fullname,specialization from doctors where specialization = _specialization;
END //

DELIMITER ;

call getspecialization ("cardiology");
drop procedure hospital.getspecialization;



