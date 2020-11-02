
/* UC9: Alter Table to Add BookName and it's Type */
alter table AddressBook add BookName varchar(50), BookType varchar(50);
update AddressBook set BookName='Book1', BookType='History' where LastName='Singh'; 
update AddressBook set BookName='Book2', BookType='Friends' where FirstName='Ruthik' or FirstName='Shubham';