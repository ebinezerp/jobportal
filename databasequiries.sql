use jobportal;


delete from jobportal.customer;

alter table customer add primary key (username);


#  to modify single column
alter table customer modify firstname varchar(20) not null;


# to modify multiple columns
alter table customer 
modify column lastname varchar(20) not null,
modify column email varchar(50) not null,
modify column role varchar(10) not null,
modify column password varchar(20) not null;



select * from jobportal.customer;
