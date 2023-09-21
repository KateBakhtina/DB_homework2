create table if not exists Employee(
	id serial primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	dept varchar(20) not null,
	id_manager integer references Employee
);
