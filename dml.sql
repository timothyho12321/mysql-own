
-- insert one data set (for record)
insert into parents (first_name, last_name) values ("Ah Kow", "Tan");


-- add first data entry
insert into petowners (fname, lname, email) values ("John", "Tan","john@gmail.com");
insert into pets (pet_name, petowner_id) values ("Felix",1);
insert into vets (fname, lname, office_number) values ("Michael","Chua","91234567");
insert into shifts (start_time, end_time, vet_id) values ("09:00:00","18:00:00",1);

insert into appointments (date_time, vet_id, pet_id, petowner_id) values ("2022-10-11 17:00:00",1,1,1);
insert into diagnosis(doctor_notes, appointment_id) values ("Dog is slightly unhealthy.",1);
insert into treatments(dosage, quantity,diagnosis_id) values (2.5,1,2);
insert into medicines(medicine_name, med_description) values ("Flumucil","For cough.");
insert into prescription(treatment_id, medicine_id) values (1,1);


-- second data entry
insert into pets (pet_name, petowner_id) values ("Simon",1);

insert into appointments (date_time, vet_id, pet_id, petowner_id) values ("2022-09-11 15:00:00",1,2,1);
insert into diagnosis(doctor_notes, appointment_id) values ("Parrot lost its voice.",3);
insert into treatments(dosage, quantity,diagnosis_id) values (1.0,2,3);
insert into medicines(medicine_name, med_description) values ("Lozenges","For bad voice.");
insert into prescription(treatment_id, medicine_id) values (2,2);



-- add second doctor data entry
insert into vets (fname, lname, office_number) values ("Jean","Lim","81234567");
insert into shifts (start_time, end_time, vet_id) values ("11:00:00","21:00:00",2);

insert into appointments (date_time, vet_id, pet_id, petowner_id) values ("2022-10-21 16:00:00",2,2,1);
insert into diagnosis(doctor_notes, appointment_id) values ("Parrot regained the voice",4);


-- add second petowner with cat Lucy
insert into petowners (fname, lname, email) values ("Megan", "Poh","megan@gmail.com");
insert into pets (pet_name, petowner_id) values ("Lucy",2);

insert into appointments (date_time, vet_id, pet_id, petowner_id) values ("2022-10-14 14:00:00",2,3,2);
insert into diagnosis(doctor_notes, appointment_id) values ("Cat is vomitting.",5);
insert into treatments(dosage, quantity,diagnosis_id) values (4.0,2,5);
insert into medicines(medicine_name, med_description) values ("Charcoal pill","For vomitting.");
insert into prescription(treatment_id, medicine_id) values (3,3);
