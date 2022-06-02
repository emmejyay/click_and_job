# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Database"
if Rails.env.development?
  UserSkill.destroy_all
  JobSkill.destroy_all
  Request.destroy_all
  Skill.destroy_all
  Job.destroy_all
  User.destroy_all
end

puts "Creating Database"

# users(students)
meghan = User.create!(email: "meg@meg.com", password: "Hello1!", employer: false, name: "Meghan", nickname: "emmejyay", location: "Mechelen, Belgium", description: "Likes math and design, dog owner of 1. Passionate about service with a smile.", avg_rating: rand(1..5))
maxime = User.create!(email: "max@max.com", password: "Hello1!", employer: false, name: "Maxime", nickname: "MaxiJaps", location: "Liege, Belgium", description: "Expert waiter.  Will mess you up on the basketball court.  Learning tennis, but will dominate soon.", avg_rating: rand(1..5))
ted = User.create!(email: "ted@ted.com", password: "Hello1!", employer: false, name: "Ted", nickname: "tedzzer", location: "Brussels, Belgium", description: "Style is first, football celebration dances are second.", avg_rating: rand(1..5))
jack = User.create!(email: "jac@jac.com", password: "Hello1!", employer: false, name: "Jack", nickname: "jackee22", location: "Louvain-la-Neuve, Belgium", description: "I speak Syriac, do you? Probably not. Serious about dying languages and football.", avg_rating: rand(1..5))
tony = User.create!(email: "ton@ton.com", password: "Hello1!", employer: false, name: "Tony", nickname: "Tonyaguilar10", location: "Brussels, Belgium", description: "Football and naps are my thing.  I'll score goals for you.", avg_rating: rand(1..5))
pierrick = User.create!(email: "pie@pie.com", password: "Hello1!", employer: false, name: "Pierrick", nickname: "pierrick1122", location: "Brussels, Belgium", description: "Loves rabbits, and throwing elbows in football matches. Olympique de Marseille is the best team ever.", avg_rating: rand(1..5))
archi = User.create!(email: "arc@arc.com", password: "Hello1!", employer: false, name: "Archi", nickname: "Archisaen", location: "Brussels, Belgium", description: "Big on sports, always ready for a game.  Might go on safari if you don't go too touristy.", avg_rating: rand(1..5))
sebastien = User.create!(email: "seb@seb.com", password: "Hello1!", employer: false, name: "Sebastien", nickname: "sebd141", location: "Brussels, Belgium", description: "Interested in startups, will help you create! your MVP.", avg_rating: rand(1..5))
antoine = User.create!(email: "ant@ant.com", password: "Hello1!", employer: false, name: "Antoine", nickname: "AntoineThiran", location: "Brussels, Belgium", description: "World-class tennis player and crafty web-developer.", avg_rating: rand(1..5))
val = User.create!(email: "val@val.com", password: "Hello1!", employer: false, name: "Val", nickname: "valsmets", location: "Brussels, Belgium", description: "Artist-on-fire and knowledgeable about mushrooms.  I have an eye for design in webpage creation and will beat you at foosball.", avg_rating: rand(1..5))
valentin = User.create!(email: "vale@vale.com", password: "Hello1!", employer: false, name: "Valentin", nickname: "Valduche4", location: "Brussels, Belgium", description: "Classic car enthusiast, cyclist, and seasoned practical joker.", avg_rating: rand(1..5))
mouton = User.create!(email: "mou@mou.com", password: "Hello1!", employer: false, name: "Mouton", nickname: "Mouton49", location: "Brussels, Belgium", description: "Grazing grass and headbutts all day, very at home on the football pitch.", avg_rating: rand(1..5))
augusto = User.create!(email: "aug@aug.com", password: "Hello1!", employer: false, name: "Augusto", nickname: "Augusto2403", location: "Brussels, Belgium", description: "Jack-of-all-trades.  Not available during F1 races.", avg_rating: rand(1..5))
george = User.create!(email: "geo@geo.com", password: "Hello1!", employer: false, name: "George", nickname: "gkosmos", location: "Brussels, Belgium", description: "They call me 'The Fixer'.  If you have tech/coding issues, I've got your back.", avg_rating: rand(1..5))
niko = User.create!(email: "nik@nik.com", password: "Hello1!", employer: false, name: "Niko", nickname: "disco-chef", location: "Brussels, Belgium", description: "Cats, coding, cooking.  In that order.", avg_rating: rand(1..5))
pedro = User.create!(email: "ped@ped.com", password: "Hello1!", employer: false, name: "Pedro", nickname: "Pedro-Pan", location: "Brussels, Belgium", description: "Always late, but I have a great attitude! Polyglot.", avg_rating: rand(1..5))

# users(employers)
emp_jack = User.create!(email: "jac@emp.com", password: "Hello1!", employer: true, name: "Jack", company: "Direct League", location: "Brussels, Belgium", description: "Organizer for mini football matches.", avg_rating: rand(1..5))
emp_antoine = User.create!(email: "ant@emp.com", password: "Hello1!", employer: true, name: "Antoine", company: "Petzr", location: "Brussels, Belgium", description: "Organizer for pet care.", avg_rating: rand(1..5))
emp_valentin = User.create!(email: "vale@emp.com", password: "Hello1!", employer: true, name: "Valentin", company: "MythiCar", location: "Brussels, Belgium", description: "Organizer for classic car maintenance.", avg_rating: rand(1..5))
emp_maxime = User.create!(email: "max@emp.com", password: "Hello1!", employer: true, name: "Maxime", company: "Le Canotier", location: "Neupre, Belgium", description: "Wonderful restaurant just outside of Liege.", avg_rating: rand(1..5))
emp_niko = User.create!(email: "nik@emp.com", password: "Hello1!", employer: true, name: "Niko", company: "Herbe a Chat Webcafe", location: "Brussels, Belgium", description: "Downtown Brussels internet cafe with tasty gourmet snacks.", avg_rating: rand(1..5))

# jobs
footballer = Job.create!(user: emp_jack, job_title: "Footballer", job_description: "Player needed for quarter-final match to prevent forfeit.", start_date: Date.today + 1.day, end_date: Date.today + 1.day, remuneration: rand(15..45))
dog_walker = Job.create!(user: emp_antoine, job_title: "Dog Walker", job_description: "Dog walker needed for downtown Brussels client.", start_date: Date.today + 1.day, end_date: Date.today + 1.day, remuneration: rand(15..45))
workshop_mgr = Job.create!(user: emp_valentin, job_title: "Workshop Manager", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: Date.today + 1.day, end_date: Date.today + 1.day, remuneration: rand(15..45))
line_cook = Job.create!(user: emp_maxime, job_title: "Line Cook", job_description: "Line cook needed to work Friday evening dinner rush and clean up after.", start_date: Date.today + 1.day, end_date: Date.today + 1.day, remuneration: rand(15..45))
tech_support = Job.create!(user: emp_niko, job_title: "Tech Support Teaching Assistant", job_description: "We are hosting a landing page workshop and need support for troubleshooting with attendees.", start_date: Date.today + 1.day, end_date: Date.today + 1.day, remuneration: rand(15..45))

# # skills
football = Skill.create!(name: 'football')
sports = Skill.create!(name: 'sports')
cooking = Skill.create!(name: 'cooking')
cleaning = Skill.create!(name: 'cleaning')
waitstaffing = Skill.create!(name: 'waitstaffing')
dog_walking = Skill.create!(name: 'dog walking')
pet_sitting = Skill.create!(name: 'pet sitting')
web_development = Skill.create!(name: 'web development')
design = Skill.create!(name: 'design')
languages = Skill.create!(name: 'languages')
driving = Skill.create!(name: 'driving')
cars = Skill.create!(name: 'cars')

# UserSkill.create(user: meghan, skill: cooking)
meghan.skills << web_development
meghan.skills << design
meghan.skills << cooking
meghan.skills << cleaning
meghan.skills << dog_walking
meghan.skills << pet_sitting
maxime.skills << web_development
maxime.skills << waitstaffing
maxime.skills << cleaning
maxime.skills << sports
ted.skills << web_development
ted.skills << design
ted.skills << football
jack.skills << web_development
jack.skills << design
jack.skills << languages
jack.skills << football
tony.skills << web_development
tony.skills << football
pierrick.skills << web_development
pierrick.skills << football
pierrick.skills << pet_sitting
archi.skills << web_development
archi.skills << sports
archi.skills << football
sebastien.skills << web_development
sebastien.skills << design
antoine.skills << web_development
antoine.skills << design
antoine.skills << sports
antoine.skills << pet_sitting
antoine.skills << dog_walking
val.skills << web_development
val.skills << design
val.skills << sports
valentin.skills << web_development
valentin.skills << cars
valentin.skills << driving
valentin.skills << football
valentin.skills << sports
mouton.skills << web_development
mouton.skills << football
mouton.skills << sports
mouton.skills << cars
mouton.skills << driving
augusto.skills << web_development
augusto.skills << football
augusto.skills << sports
augusto.skills << cars
augusto.skills << driving
george.skills << web_development
niko.skills << web_development
niko.skills << cooking
niko.skills << cleaning
niko.skills << pet_sitting
pedro.skills << web_development
pedro.skills << languages

# JobSkill.create(job: footballer, skill: football)
footballer.skills << football
dog_walker.skills << dog_walking
workshop_mgr.skills << cars
line_cook.skills << cooking
line_cook.skills << cleaning
tech_support.skills << web_development
tech_support.skills << design

# requests(students)
# footballer_st_req_1 = Request.create(user: tony, job: footballer, status: "pending")
# footballer_st_req_2 = Request.create(user: archi, job: footballer, status: "pending")
# footballer_st_req_3 = Request.create(user: augusto, job: footballer, status: "pending")

# dog_walker_st_req_1 = Request.create(user: meghan, job: dog_walker, status: "pending")
# dog_walker_st_req_2 = Request.create(user: pierrick, job: dog_walker, status: "pending")

# tech_support_st_req_1 = Request.create(user: george, job: tech_support, status: "pending")
# tech_support_st_req_1 = Request.create(user: sebastien, job: tech_support, status: "pending")

# requests(employers)
# footballer_emp_req_1 = Request.create(user: tony, job: footballer, status: "pending")

# workshop_mgr_emp_req_1 = Request.create(user: george, job: tech_support, status: "pending")
# workshop_mgr_emp_req_2 =
# workshop_mgr_emp_req_3 =

# line_cook_emp_req_1 =
# line_cook_emp_req_2 =

# reviews
# review_ = Request.create(writer_id: george, recipient_id: emp_niko, job: tech_support, content: "Great space to host a workshop, friendly staff.")
# review_dog_walker = Request.create(writer_id: george, recipient_id: emp_niko, job: tech_support, content: "Great space to host a workshop, friendly staff.")
# review_ = Request.create(writer_id: george, recipient_id: emp_niko, job: tech_support, content: "Great space to host a workshop, friendly staff.")
# review_tech_support = Request.create(writer_id: george, recipient_id: emp_niko, job: tech_support, content: "Great space to host a workshop, friendly staff.")
# review_tech_support = Request.create(writer_id: george, recipient_id: emp_niko, job: tech_support, content: "Great space to host a workshop, friendly staff.")

puts "Database Created!"
