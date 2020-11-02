/* UC2: Create AddressBook Table */
create table AddressBook(
Id int IDENTITY (1,1),
FirstName varchar(50),
LastName varchar(50),
Address varchar(50),
City varchar(50),
State varchar(50),
Zip int,
PhoneNumber varchar(50),
Email varchar(50)
);
