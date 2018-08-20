# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#clinic
Clinic.create(name: "Clinic 1", address: "1 Pavilion Avenue", phone_number: 020 3132 2190)
Clinic.create(name: "Clinic 2", address: "14 Castle Road", phone_number: 020 3132 2000)
Clinic.create(name: "Clinic 3", address: "32 Circle Drive", phone_number: 020 2432 9190)
Clinic.create(name: "Clinic 4", address: "63 Dower Avenue", phone_number: 020 3130 2090)
Clinic.create(name: "Clinic 5", address: "45 Swing Avenue", phone_number: 020 2032 2190)
Clinic.create(name: "Clinic 6", address: "32 Pavilion Avenue", phone_number: 020 3132 2191)
Clinic.create(name: "Clinic 7", address: "10a Roti Avenue", phone_number: 020 3678 2190)


#department
Department.create(name: "Allergy Services")
Department.create(name: "Audiology")
Department.create(name: "Breast Screening")
Department.create(name: "Cancer services")
Department.create(name: "Cardiothoracic Services")
Department.create(name: "Diabetes")
Department.create(name: "Dermatology")
Department.create(name: "Gynaecology")
Department.create(name: "Infectious Diseases")
Department.create(name: "Laboratory work")
Department.create(name: "Neurology")
Department.create(name: "Occupational Therapy")
#practitioners

Practitioner.create(name: "Dona Paulsen", gender: "female", years_experience: 15, phone_number_ext: 30, email: "dona.p@clinic.com")
Practitioner.create(name: "Flavius Linus", gender: "male", years_experience: 5, phone_number_ext: 31, email: "flavius.l@clinic.com")
Practitioner.create(name: "Sonam Pliu-Li", gender: "male", years_experience: 20, phone_number_ext: 32, email: "sonam.p@clinic.com")
Practitioner.create(name: "Logan S. Scott", gender: "male", years_experience: 25, phone_number_ext: 33, email: "logan.s@clinic.com")
Practitioner.create(name: "Gilian Sonders", gender: "female", years_experience: 26, phone_number_ext: 152, email: "gil.s@clinic.com")
Practitioner.create(name: "Lori Down", gender: "female", years_experience: 16, phone_number_ext: 153, email: "lori.d@clinic.com")
Practitioner.create(name: "Simona Ena", gender: "female", years_experience: 13, phone_number_ext: 14, email: "simona.e@clinic.com")
Practitioner.create(name: "Dorian Fowles", gender: "male", years_experience: 7, phone_number_ext: 18, email: "dorian.f@clinic.com")
Practitioner.create(name: "Sarah Langi", gender: "female", years_experience: 19, phone_number_ext: 162, email: "sarah.l@clinic.com")
Practitioner.create(name: "Eric Dale", gender: "male", years_experience: 10, phone_number_ext: 72, email: "eric.d@clinic.com")
Practitioner.create(name: "Luise Lang", gender: "female", years_experience: 15, phone_number_ext: 87, email: "luise.l@clinic.com")
Practitioner.create(name: "Chris Sas", gender: "male", years_experience: 9, phone_number_ext: 53, email: "chris.s@clinic.com")
Practitioner.create(name: "Sam Angus", gender: "male", years_experience: 18, phone_number_ext: 87, email: "sam.a@clinic.com")
Practitioner.create(name: "Richard Dew", gender: "male", years_experience: 8, phone_number_ext: 76, email: "richard.d@clinic.com")
Practitioner.create(name: "Dorin Tayler", gender: "male", years_experience: 9, phone_number_ext: 71, email: "dorin.t@clinic.com")
Practitioner.create(name: "Olivia Brown", gender: "female", years_experience: 15, phone_number_ext: 80, email: "olivia.b@clinic.com")
Practitioner.create(name: "Sonia Evans", gender: "female", years_experience: 21, phone_number_ext: 301, email: "sonia.e@clinic.com")
