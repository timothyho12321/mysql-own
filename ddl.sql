
-- Sample
create table parents (
    parent_id integer unsigned auto_increment primary key,
    first_name varchar(45) not null default "",
    last_name varchar(45) not null default ""
) engine = innodb;

-- petowners
create table petowners (
petowner_id integer unsigned auto_increment primary key,
fname varchar(30) not null default "",
lname varchar(30) not null default "",
email varchar(50) not null default ""

) engine = innodb;

-- reference to alter petowners

alter table petowners modify column fname varchar(40) not null;

-- vets
create table vets (
vet_id integer unsigned auto_increment primary key,
fname varchar(30) not null default "",
lname varchar(30) not null default "",
office_number varchar(20)  not null default 0

) engine = innodb;


-- medicines
create table medicines (
medicine_id integer unsigned auto_increment primary key,
medicine_name varchar(30) not null default "",
med_description varchar(255) not null default ""


) engine = innodb;

-- has a reference
-- pets
create table pets (
pet_id integer unsigned auto_increment primary key,
pet_name varchar(50) not null default "",
petowner_id integer unsigned not null default 0,
foreign key (petowner_id) references petowners(petowner_id)


) engine = innodb;


-- shifts
create table shifts (
shift_id integer unsigned auto_increment primary key,
start_time time ,
end_time time,
vet_id integer unsigned not null default 0,
foreign key (vet_id) references vets(vet_id)


) engine = innodb;

-- appointments

create table appointments (
appointment_id integer unsigned auto_increment primary key,
date_time datetime,
vet_id integer unsigned not null default 0,
pet_id integer unsigned not null default 0,
petowner_id integer unsigned not null default 0,
foreign key (vet_id) references vets(vet_id),
foreign key (pet_id) references pets(pet_id),
foreign key (petowner_id) references petowners(petowner_id)


) engine = innodb;

-- diagnosis 
create table diagnosis(
diagnosis_id integer unsigned auto_increment primary key,
doctor_notes varchar(255) not null default "",
appointment_id integer unsigned not null default 0,
foreign key (appointment_id ) references appointments(appointment_id )


) engine = innodb;




-- treatments 

create table treatments (
treatment_id integer unsigned auto_increment primary key,
dosage float unsigned not null default 0,
quantity integer unsigned not null default 0,
diagnosis_id integer unsigned not null default 0,
foreign key (diagnosis_id ) references diagnosis(diagnosis_id )


) engine = innodb;


-- prescription

create table prescription(
prescription_id integer unsigned auto_increment primary key,
treatment_id integer unsigned not null default 0,
medicine_id integer unsigned not null default 0,
foreign key (treatment_id ) references treatments(treatment_id ),
foreign key (medicine_id ) references medicines(medicine_id )

) engine = innodb;




