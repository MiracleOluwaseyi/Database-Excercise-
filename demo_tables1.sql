use demo;
/**create table name_of_table(
	column_name column_datatype optional constraint,
    column_name column_datatype optional constraint,
    .......
    column_name column_datatype optional constraint,
    CONSTRAINT name_of_table_PK primary key(column_name)
    CONSTRAINT name_of_table_FK foreign key(column_name)
								REFERENCES table_name(column_name)
                                
);**/

CREATE TABLE Human(
	HumanId			Integer			NOT NULL,
    Name			Char(35)		NOT NULL,
    Color			Char(30)		NOT NULL,
    Sex				Char(10)		NULL,
    BloodGroup		Char(35)		NULL,
    CONSTRAINT		Human_PK		PRIMARY KEY(HumanId)
);

CREATE TABLE Games(
	OrderNumber			Integer				NOT NULL,
    StoreNumber			Integer				NULL,
    StoreZip			Char(9)				NULL,
    OrderMonth			Char(12)			NOT NULL,
    OrderYear			Integer				NOT NULL,
    OrderTotal			Numeric(4,2)		NULL,
    HumanId				Integer				NOT NULL,
    CONSTRAINT			Games_PK			PRIMARY KEY(OrderNumber),
    CONSTRAINT			Games_FK			FOREIGN KEY(HumanId)
											REFERENCES Human(HumanId)
);

CREATE TABLE NATIVEINFO(
NativeId		integer		 	NOT NULL,
FirstName		char(40)	 	NOT NULL,
SecondName		char(40)		NOT NULL,
EmailAdress		char(40)		NOT NULL,
PhoneNumber		varchar(15)		NOT NULL,
CONSTRAINT		NATIVEINFO_PK	PRIMARY KEY(NativeId)
);

select *
from nativeinfo





