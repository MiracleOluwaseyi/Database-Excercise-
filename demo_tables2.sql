Use demo;

CREATE TABLE Customer(
	custId				Char(6)				NOT NULL,
    fname				Char(30)			NULL,
    mname				Char(30)			NULL,
    lname				Char(30)			NULL,
    city				Char(15)			NULL,
    mobileno			Char(10)			NULL,
    occupation			Char(10)			NULL,
    dob					Date				NULL,
	CONSTRAINT			Customer_PK			PRIMARY KEY(custId)
);

CREATE TABLE Loan(
	custId				Char(6)				NOT NULL,
    bid					Char(6)				NOT NULL,
    loan				Integer				NULL,
	CONSTRAINT			Loan_PK			PRIMARY KEY(custId, bid)
);

CREATE TABLE Branch(
    bid					Char(6)				NOT NULL,
    bname				Char(30)			NULL,
    bcity				Char(30)			NULL,
    CONSTRAINT			Branch_PK			PRIMARY KEY(bid)
);

CREATE TABLE Account(
	acnumber			Char(6)				NOT NULL,
    opening_balance		Integer				NULL,
    aod					Date				NULL,
    atype				Char(10)			NULL,
    astatus				Char(10)			NULL,
    custId				Char(6)				NOT NULL,
	bid					Char(6)				NOT NULL,
	CONSTRAINT			Account_PK			PRIMARY KEY(acnumber),
    CONSTRAINT			Account1_FK			FOREIGN KEY(bid)
                                        REFERENCES Branch(bid),
	CONSTRAINT			Account2_FK			FOREIGN KEY(custId)
                                        REFERENCES Customer(custId)
);

CREATE TABLE Trandetails(
	tnumber								Char(6)				NOT NULL,
    dot									Date				NULL,
    medium_of_transaction				Char(20)			NULL,
    transaction_type					Char(20)			NULL,
    transaction_amount					Integer				NULL,
    acnumber							Char(6)				NOT NULL,
	CONSTRAINT			Trandetails_PK			PRIMARY KEY(tnumber),
    CONSTRAINT			Trandetails_FK			FOREIGN KEY(acnumber)
                                        REFERENCES Account(acnumber)
);