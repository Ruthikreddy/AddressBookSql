/*UC 12 : Implemetation of E-R concept*/

use addressbook_service;

--Creating contact table
create table contact(
FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo bigint not null,
Email varchar(250) not null,
primary key(FirstName,LastName)
);
--Adding data into the contact table
insert into contact values
('Ruthik','Reddy','Chennai','Bihar','Delhi',123456,5410896985,'Ruthik@gmail.com'),
('Axar','Patel','lane 9','Panipat','Haryana',138675,9876545678,'Axra@rediffmail.com'),


--Creating table type
create table type(
SrNo int not null,
ContactType varchar(100) not null,
primary key(SrNo,ContactType)
);
--Adding data into the table type
insert into type values
(1,'FRIENDS'),
(2,'PROFESSION'),
(3,'FAMILY'),

--Creating table contact_type
create table contact_type(
FirstName varchar(100) not null,
LastName varchar(100),
ContactType varchar(100) not null
);

--Adding data into the table contact_type
insert into contact_type values
('Ruthik','Reddy','FRIENDS'),
('Ruthik','Reddy','FAMILY');

--Creating table addressbook
create table addressbook(
SrNo int not null,
AddressBookName varchar(100) not null,
primary key(SrNo,AddressBookName)
);
--Adding values into table
insert into addressbook values
(1,'RUTHIK'),
(2,'AXAR');

--Creating table addressbookname storing bookname for each contact
create table addressbookname(
FirstName varchar(100) not null,
LastName varchar(100),
AddressBookName varchar(100) not null
);
--Adding data into table
insert into addressbookname values
('Ruthik','Reddy','SHAMEER'),
('Axar','PAtel','Contact1');