# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d1 = DateTime.new(2017, 3, 21)
d2 = DateTime.new(2017, 2, 22)

User.create([
	{
		:utorid => "someid1",
		:password_digest => "?",
		:student_number => 1029482743,
		:family_name => "Parker",
		:given_name => "Peter", 
		:program => "UG",
		:year => 3,
		:previous_ta_experience => false,
		:work_status => true,
		:work_status_explain => "Canadian Born",
		:department => "ECE", 
		:department_explanation => "I have no idea", 
		:phone_number => "6479294829", 
		:date_of_application => d1, 
		:created_at => d2, 
		},	
	{
		:utorid => "someid2",
		:password_digest => "?",
		:student_number => 928274810,
		:family_name => "Wick",
		:given_name => "John", 
		:program => "MSC",
		:year => 6,
		:previous_ta_experience => true,
		:work_status => true,
		:work_status_explain => "Canadian Born",
		:department => "DCS", 
		:department_explanation => "I like computers", 
		:phone_number => "4169375028", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid3",
		:password_digest => "?",
		:student_number => 1073648290,
		:family_name => "Smith",
		:given_name => "Will", 
		:program => "MSAC",
		:year => 7,
		:previous_ta_experience => false,
		:work_status => false,
		:work_status_explain => "Work visa wll arrive in 4 days",
		:department => "ECE", 
		:department_explanation => "I like enginneering", 
		:phone_number => "6472348829", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid4",
		:password_digest => "?",
		:student_number => 1037462948,
		:family_name => "Trump",
		:given_name => "Donald", 
		:program => "PHD",
		:year => 9,
		:previous_ta_experience => true,
		:work_status => true,
		:work_status_explain => "I'm American",
		:department => "DCS", 
		:department_explanation => "So I can talk with the Russians", 
		:phone_number => "4162644039", 
		:date_of_application => d1, 
		:created_at => d2,   
		},
	{
		:utorid => "someid5",
		:password_digest => "?",
		:student_number => 1003648294,
		:family_name => "Hart",
		:given_name => "Kevin", 
		:program => "UG",
		:year => 2,
		:previous_ta_experience => false,
		:work_status => false,
		:work_status_explain => "I'm a grown little man",
		:department => "ECE", 
		:department_explanation => "Ayylmao", 
		:phone_number => "9058274930", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid6",
		:password_digest => "?",
		:student_number => 10004628592,
		:family_name => "Stark",
		:given_name => "Tony", 
		:program => "MSC",
		:year => 5,
		:previous_ta_experience => true,
		:work_status => true,
		:work_status_explain => "I'm Iron Man",
		:department => "DCS", 
		:department_explanation => "Billionaire, playboy, philanthropist", 
		:phone_number => "2228364920", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid7",
		:password_digest => "?",
		:student_number => 847205284,
		:family_name => "Holmes",
		:given_name => "Sherlock", 
		:program => "MSAC",
		:year => 7,
		:previous_ta_experience => false,
		:work_status => false,
		:work_status_explain => "I'm a high functioning sociopath",
		:department => "ECE", 
		:department_explanation => "Elementary", 
		:phone_number => "2846284946", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid8",
		:password_digest => "?",
		:student_number => 2462856206,
		:family_name => "Shinya",
		:given_name => "Kogami", 
		:program => "PHD",
		:year => 10,
		:previous_ta_experience => true,
		:work_status => true,
		:work_status_explain => "I'm an Enforcer",
		:department => "DCS", 
		:department_explanation => "Don't really have one", 
		:phone_number => "2227495739", 
		:date_of_application => d1, 
		:created_at => d2, 
		},
	{
		:utorid => "someid9",
		:password_digest => "?",
		:student_number => 9997783839,
		:family_name => "James",
		:given_name => "Lebron", 
		:program => "UG",
		:year => 1,
		:previous_ta_experience => false,
		:work_status => true,
		:work_status_explain => "NBA Player for the Cleveland Cavaliers.",
		:department => "ECE", 
		:department_explanation => "I enjoy basketball", 
		:phone_number => "4169671111", 
		:date_of_application => d1, 
		:created_at => d2, 
		}])

TaApplication.create([
	{
		:details => "I've never done this before",
		:user_id => 1,
		:course_id => 1,
		:previous_ta_experience => false,
		:preferences => 5
		},
	{
		:details => "I think I can do this",
		:user_id => 2,
		:course_id => 2,
		:previous_ta_experience => true,
		:preferences => 4    
		},
	{
		:details => "First time for everything",
		:user_id => 3,
		:course_id => 3,
		:previous_ta_experience => false,
		:preferences => 3 
		},
	{
		:details => "Easiest course ever to TA",
		:user_id => 4,
		:course_id => 4,
		:previous_ta_experience => true,
		:preferences => 2
		},
	{
		:details => "New Experience",
		:user_id => 5,
		:course_id => 1,
		:previous_ta_experience => false,
		:preferences => 1
		},
	{
		:details => "Already did it",
		:user_id => 6,
		:course_id => 2,
		:previous_ta_experience => true,
		:preferences => 5    
		},
	{
		:details => "No experience",
		:user_id => 7,
		:course_id => 3,
		:previous_ta_experience => false,
		:preferences => 4
		},
	{
		:details => "Cuz I'm bored",
		:user_id => 8,
		:course_id => 4,
		:previous_ta_experience => true,
		:preferences => 3
		},
	{
		:details => "I have some experience",
		:user_id => 9,
		:course_id => 1,
		:previous_ta_experience => false,
		:preferences => 4
		}])

Course.create([
	{
		:course_code => "CSC108",
		:description => "Programming in a language such as Python"
		},
	{
		:course_code => "CSC148",
		:description => "Abstract data types and dat structures for implementing them"
		},
	{
		:course_code => "CSC165",
		:description => "Introduction to abstraction and rigour"
		},
	{
		:course_code => "CSC236",
		:description => "The application of logic and proof techniques to Computer Science"
	}])
