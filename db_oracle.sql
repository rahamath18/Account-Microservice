create table ACCOUNT (
       ID number(10,0) generated as identity,
        CREATED_BY varchar2(20 char) not null,
        CREATED_DATE timestamp not null,
        LOGICALLY_DELETED varchar2(1 char) not null,
        PASSWORD varchar2(12 char) not null,
        STATUS varchar2(12 char) not null,
        TOKEN varchar2(12 char),
        UPDATED_BY varchar2(20 char),
        UPDATED_DATE timestamp,
        USER_NAME varchar2(20 char) not null,
        VERSION number(10,0) not null,
        primary key (ID)
    );