alter table STUDENT alter column BIRTHDAY DATE NOT NULL;

alter table MARK add CONSTRAINT mark CHECK (MARK >=1 and MARK<=10);
alter table MARK alter column STUDENT_ID int NOT NULL;
alter table MARK alter column SUBJECT_ID INT not null;

alter table SUBJECT add CONSTRAINT grade check (GRADE>=1 and GRADE<=5);

alter table PAYMENTTYPE add constraint payment_type unique (NAME);

alter table PAYMENT alter column TYPE_ID bigint not null ;
alter table PAYMENT alter column AMOUNT decimal not null ;
alter table  PAYMENT alter column PAYMENT_DATE DATETIME not null ;