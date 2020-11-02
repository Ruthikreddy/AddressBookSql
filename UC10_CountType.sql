/* UC10: Count person by type */
select BookType, count(BookType) as CountType from AddressBook group by BookType;