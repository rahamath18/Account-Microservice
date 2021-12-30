create table ACCOUNT (
	id bigserial NOT NULL,
	USER_NAME varchar(20) not null, 
	PASSWORD varchar(12) not null, 	
	TOKEN varchar(12), 
	STATUS varchar(12) not null, 
	VERSION integer not null, 
	LOGICALLY_DELETED varchar(1) not null, 	
	CREATED_BY varchar(20) not null, 
	CREATED_DATE timestamp not null, 
	UPDATED_BY varchar(20), 
	UPDATED_DATE timestamp, 
	primary key (ID)
);