# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d1 = DateTime.new(2017, 2, 21)
d2 = DateTime.new(2017, 2, 22)
programs = Array["UG", "MSC", "MSAC", "PHD"]
departments = Array["ECE", "DCS"]

for i in 1..50 do
	User.create([
		{
			:utorid => "someid#{i}",
			:password_digest => "?",
			:student_number => Faker::Number.number(10),
			:family_name => Faker::Name.last_name,
			:given_name => Faker::Name.first_name, 
			:program => programs[Faker::Number.between(0,3)],
			:year => Faker::Number.between(1, 10),
			:previous_ta_experience => Faker::Boolean.boolean,
			:work_status => Faker::Boolean.boolean,
			:work_status_explain => Faker::RickAndMorty.quote,
			:department => departments[Faker::Number.between(0,1)], 
			:department_explanation => Faker::StarWars.quote, 
			:phone_number => Faker::PhoneNumber.phone_number, 
			:date_of_application => d1, 
			:created_at => d2, 
			:previously_declined => Faker::Boolean.boolean
		}
	])

	TaApplication.create([
		{
			:details => Faker::Company.bs,
			:user_id => i,
			:course_id => Faker::Number.between(1, 4),
			:previous_ta_experience => Faker::Boolean.boolean,
			:preferences => Faker::Number.between(1, 5),
			:created_at => DateTime.new(2017, 3, Faker::Number.between(21, 31)),
			:submitted_at => DateTime.new(2017, 4, Faker::Number.between(1,24)),
			:taken_in_past => Faker::Boolean.boolean
		}
	])
end
