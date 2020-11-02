/*UC1: Creating Address Book Database*/
create database AddressBookService;
use AddressBookService;

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

/*UC3: Insert new contact in the AddressBook Table*/
insert into AddressBook values
('Ruthik','Reddy','Hyderabad','Mbnr','Telangana',509007,'1256398','ruthik@gmail.com'),
('Rahul','Singh','Buxar','Patna','Bihar',568912,'1234789','nothing@gmail.com'),
('Axar','Patel','Rajkot','Munnar','Gujarat',800580,'1023456789','patel@gmail.com'),
('Shubham','Kumar','New Delhi','Gurgaon','Delhi',400080,'1203456789','pranav@gmail.com')


/*UC4: Edit exiting contact using person name*/
update AddressBook set City='Chennai', Zip=400604 where FirstName='Axar' and LastName='Patel';

/*UC5: Delete exiting contact using person name*/
delete from AddressBook where FirstName='Axar' and LastName='Patel';

/* UC6: Retrieve person belonging to city or state*/
select * from AddressBook where city='Mbnr' or state='Telanagna';

/* UC7: Get size of Addressbook by city or state */
select count(city) as TotalContacts from AddressBook;

/* UC8: Retrieve person entry sorted alphabetically */
select * from AddressBook  order by FirstName;

/* UC9: Alter Table to Add BookName and it's Type */
alter table AddressBook add BookName varchar(50), BookType varchar(50);
update AddressBook set BookName='Book1', BookType='History' where LastName='Singh'; 
update AddressBook set BookName='Book2', BookType='Friends' where FirstName='Ruthik' or FirstName='Shubham';


/* UC10: Count person by type */
select BookType, count(BookType) as CountType from AddressBook group by BookType;

/* UC11: Add a person to both family and friend type */
insert into AddressBook values
('Sai','Baba','Shiridi','Thane','Maharashtra',400564,'1325456789','mohit@gmail.com','Book1','History'),
('Akhil','Rathi','Mumbai','Thane','Maharashtra',890604,'2146569789','akhil@gmail.com','Book2','Friends');

select * from AddressBook
