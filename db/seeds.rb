# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#clinic
clinics = [
{name: "Clinic 1", address: "1 Pavilion Avenue", phone_number: "020 3132 2190"},
{name: "Clinic 2", address: "14 Castle Road", phone_number: "020 3132 2000"},
{name: "Clinic 3", address: "32 Circle Drive", phone_number: "020 2432 9190"},
{name: "Clinic 4", address: "63 Dower Avenue", phone_number: "020 3130 2090"},
{name: "Clinic 5", address: "45 Swing Avenue", phone_number: "020 2032 2190"},
{name: "Clinic 6", address: "32 Pavilion Avenue", phone_number: "020 3132 2191"},
{name: "Clinic 7", address: "10a Roti Avenue", phone_number: "020 3678 2190"}
]


clinics.each {|clinic_data| Clinic.create(clinic_data)}

#department
departments = [
{name: "Allergy Services", clinic: Clinic.all.sample},
{name: "Audiology", clinic: Clinic.all.sample},
{name: "Diabetes", clinic: Clinic.all.sample},
{name: "Dermatology", clinic: Clinic.all.sample},
{name: "Infectious Diseases", clinic: Clinic.all.sample},
{name: "Laboratory work", clinic: Clinic.all.sample},
{name: "Neurology", clinic: Clinic.all.sample},
{name: "Occupational Therapy", clinic: Clinic.all.sample},
]

departments.each {|department_data| Department.create(department_data)}

#practitioners

Practitioner.create(name: "Dona Paulsen", gender: "female", years_experience: 15, phone_number_ext: 30, email: "dona.p@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Flavius Linus", gender: "male", years_experience: 5, phone_number_ext: 31, email: "flavius.l@clinic.com",department: Department.all.sample)
Practitioner.create(name: "Sonam Pliu-Li", gender: "male", years_experience: 20, phone_number_ext: 32, email: "sonam.p@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Logan S. Scott", gender: "male", years_experience: 25, phone_number_ext: 33, email: "logan.s@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Gilian Sonders", gender: "female", years_experience: 26, phone_number_ext: 152, email: "gil.s@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Lori Down", gender: "female", years_experience: 16, phone_number_ext: 153, email: "lori.d@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Simona Ena", gender: "female", years_experience: 13, phone_number_ext: 14, email: "simona.e@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Dorian Fowles", gender: "male", years_experience: 7, phone_number_ext: 18, email: "dorian.f@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Sarah Langi", gender: "female", years_experience: 19, phone_number_ext: 162, email: "sarah.l@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Eric Dale", gender: "male", years_experience: 10, phone_number_ext: 72, email: "eric.d@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Luise Lang", gender: "female", years_experience: 15, phone_number_ext: 87, email: "luise.l@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Chris Sas", gender: "male", years_experience: 9, phone_number_ext: 53, email: "chris.s@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Sam Angus", gender: "male", years_experience: 18, phone_number_ext: 87, email: "sam.a@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Richard Dew", gender: "male", years_experience: 8, phone_number_ext: 76, email: "richard.d@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Dorin Tayler", gender: "male", years_experience: 9, phone_number_ext: 71, email: "dorin.t@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Olivia Brown", gender: "female", years_experience: 15, phone_number_ext: 80, email: "olivia.b@clinic.com", department: Department.all.sample)
Practitioner.create(name: "Sonia Evans", gender: "female", years_experience: 21, phone_number_ext: 301, email: "sonia.e@clinic.com", department: Department.all.sample)
