# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#clinic
clinics = [
{name: "The City Perio", address: "5 Finsbury Circus, London EC2M 7AD", phone_number: "020 3132 2190"},
{name: "Elm Lodge Clinic", address: "317 Oxford Rd, Reading RG30 1AT", phone_number: "020 3132 2000"},
{name: "Harrow Health Care Centre", address: "The Clementine Churchill Hospital, Harrow HA1 3RX", phone_number: "020 2432 9190"},
{name: "Finsbury Health Centre", address: "Clerkenwell, London EC1R 0LP", phone_number: "020 7530 4200"},
{name: "Highgate Health Centre", address: "31A Highgate High St, Highgate, London N6 5JT", phone_number: "020 2032 2190"},
{name: "Richmond Practice", address: "19 Sheen Rd, Richmond TW9 1AD", phone_number: "020 3132 2191"},
{name: "Ramsay Health Care UK", address: "Level 18, Tower 42, 25 Old Broad Street, London EC2N 1HQ", phone_number: "020 3678 2190"}
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
Practitioner.create(name: "Flavius Linus", gender: "male", years_experience: 5, phone_number_ext: 31, email: "flavius.l@clinic.com", department: Department.all.sample)
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


#availability
today = Date.today
availabilities = []

Practitioner.all.each do |p|
  (0..6).to_a.each do |x|
    availabilities.push({date: today + x, time: "09:00", practitioner: p})
    availabilities.push({date: today + x, time: "10:00", practitioner: p})
    availabilities.push({date: today + x, time: "11:00", practitioner: p})
    availabilities.push({date: today + x, time: "13:00", practitioner: p})
    availabilities.push({date: today + x, time: "14:00", practitioner: p})
    availabilities.push({date: today + x, time: "15:00", practitioner: p})
    availabilities.push({date: today + x, time: "16:00", practitioner: p})
    availabilities.push({date: today + x, time: "17:00", practitioner: p})
    availabilities.push({date: today + x, time: "18:00", practitioner: p})
    availabilities.push({date: today + x, time: "19:00", practitioner: p})
  end
end

availabilities.each {|availability_data| Availability.create(availability_data)}
