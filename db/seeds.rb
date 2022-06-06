# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Database"
Review.destroy_all
UserSkill.destroy_all
JobSkill.destroy_all
Skill.destroy_all
Request.destroy_all
Job.destroy_all
User.destroy_all


puts "Creating students"

# users(students)
meghan = User.create!(email: "meg@meg.com", password: "Hello1!", employer: false, name: "Meghan", nickname: "emmejyay", location: "Mechelen, Belgium", description: "Likes math and design, dog owner of 1. Passionate about service with a smile.", avg_rating: rand(3..5))
maxime = User.create!(email: "max@max.com", password: "Hello1!", employer: false, name: "Maxime", nickname: "MaxiJaps", location: "Liege, Belgium", description: "Expert waiter.  Will mess you up on the basketball court.  Learning tennis, but will dominate soon.", avg_rating: rand(3..5))
ted = User.create!(email: "ted@ted.com", password: "Hello1!", employer: false, name: "Ted", nickname: "tedzzer", location: "Brussels, Belgium", description: "Style is first, football celebration dances are second.", avg_rating: rand(3..5))
jack = User.create!(email: "jac@jac.com", password: "Hello1!", employer: false, name: "Jack", nickname: "jackee22", location: "Louvain-la-Neuve, Belgium", description: "I speak Syriac, do you? Probably not. Serious about dying languages and football.", avg_rating: rand(3..5))
tony = User.create!(email: "ton@ton.com", password: "Hello1!", employer: false, name: "Tony", nickname: "Tonyaguilar10", location: "Brussels, Belgium", description: "Football and naps are my thing.  I'll score goals for you.", avg_rating: rand(3..5))
pierrick = User.create!(email: "pie@pie.com", password: "Hello1!", employer: false, name: "Pierrick", nickname: "pierrick1122", location: "Brussels, Belgium", description: "Loves rabbits, and throwing elbows in football matches. Olympique de Marseille is the best team ever.", avg_rating: rand(3..5))
archi = User.create!(email: "arc@arc.com", password: "Hello1!", employer: false, name: "Archi", nickname: "Archisaen", location: "Brussels, Belgium", description: "Big on sports, always ready for a game.  Might go on safari if you don't go too touristy.", avg_rating: rand(3..5))
sebastien = User.create!(email: "seb@seb.com", password: "Hello1!", employer: false, name: "Sebastien", nickname: "sebd141", location: "Brussels, Belgium", description: "Interested in startups, will help you create! your MVP.", avg_rating: rand(3..5))
antoine = User.create!(email: "ant@ant.com", password: "Hello1!", employer: false, name: "Antoine", nickname: "AntoineThiran", location: "Brussels, Belgium", description: "World-class tennis player and crafty web-developer.", avg_rating: rand(3..5))
val = User.create!(email: "val@val.com", password: "Hello1!", employer: false, name: "Val", nickname: "valsmets", location: "Brussels, Belgium", description: "Artist-on-fire and knowledgeable about mushrooms.  I have an eye for design in webpage creation and will beat you at foosball.", avg_rating: rand(3..5))
valentin = User.create!(email: "vale@vale.com", password: "Hello1!", employer: false, name: "Valentin", nickname: "Valduche4", location: "Brussels, Belgium", description: "Classic car enthusiast, cyclist, and seasoned practical joker.", avg_rating: rand(3..5))
mouton = User.create!(email: "mou@mou.com", password: "Hello1!", employer: false, name: "Mouton", nickname: "Mouton49", location: "Brussels, Belgium", description: "Grazing grass and headbutts all day, very at home on the football pitch.", avg_rating: rand(3..5))
augusto = User.create!(email: "aug@aug.com", password: "Hello1!", employer: false, name: "Augusto", nickname: "Augusto2403", location: "Brussels, Belgium", description: "Jack-of-all-trades.  Not available during F1 races.", avg_rating: rand(3..5))
george = User.create!(email: "geo@geo.com", password: "Hello1!", employer: false, name: "George", nickname: "gkosmos", location: "Brussels, Belgium", description: "They call me 'The Fixer'.  If you have tech/coding issues, I've got your back.", avg_rating: rand(3..5))
niko = User.create!(email: "nik@nik.com", password: "Hello1!", employer: false, name: "Niko", nickname: "disco-chef", location: "Brussels, Belgium", description: "Cats, coding, cooking.  In that order.", avg_rating: rand(3..5))
pedro = User.create!(email: "ped@ped.com", password: "Hello1!", employer: false, name: "Pedro", nickname: "Pedro-Pan", location: "Brussels, Belgium", description: "Always late, but I have a great attitude! Polyglot.", avg_rating: rand(3..5))

puts "Creating employers"

# users(employers)
emp_jack = User.create!(email: "jac@emp.com", password: "Hello1!", employer: true, name: "Employer Jack", img_url: "https://img.icons8.com/glyph-neue/344/football2.png",company: "Direct League", location: "Brussels, Belgium", description: "Organizer for mini football matches.", avg_rating: rand(3..5))
emp_antoine = User.create!(email: "ant@emp.com", password: "Hello1!", employer: true, name: "Employer Antoine", img_url: "https://img.icons8.com/glyph-neue/344/man-with-dog.png", company: "Petzr", location: "Brussels, Belgium", description: "Organizer for pet care.", avg_rating: rand(3..5))
emp_valentin = User.create!(email: "vale@emp.com", password: "Hello1!", employer: true, name: "Employer Valentin", img_url: "https://img.icons8.com/external-flaticons-lineal-color-flat-icons/2x/external-vintage-car-museum-flaticons-lineal-color-flat-icons-3.png", company: "MythiCar", location: "Brussels, Belgium", description: "Organizer for classic car maintenance.", avg_rating: rand(3..5))
emp_maxime = User.create!(email: "max@emp.com", password: "Hello1!", employer: true, name: "Employer Maxime", img_url: "https://img.icons8.com/external-flaticons-lineal-color-flat-icons/344/external-restaurant-street-food-flaticons-lineal-color-flat-icons.png", company: "Le Canotier", location: "Brussels, Belgium", description: "Wonderful restaurant with classy atmosphere.", avg_rating: rand(3..5))
emp_niko = User.create!(email: "nik@emp.com", password: "Hello1!", employer: true, name: "Employer Niko", img_url: "https://img.icons8.com/dotty/344/f--k-this-thing.png", company: "Herbe a Chat Webcafe", location: "Brussels, Belgium", description: "Downtown Brussels internet cafe with tasty gourmet snacks.", avg_rating: rand(3..5))

puts "Creating jobs"

# jobs
dog_walker_1 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Brussels, Belgium", job_description: "Dog walker needed for downtown Brussels client.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
workshop_mgr = Job.create!(user: emp_valentin, job_title: "Workshop Manager", location: "Brussels, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1628577478162-d4d00467c627?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGNhciUyMHdvcmtzaG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_walker_2 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Antwerp, Belgium", job_description: "Dog walker needed for Antwerp client.", start_date: DateTime.now + 6/24r, end_date: DateTime.now + 10/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
line_cook = Job.create!(user: emp_maxime, job_title: "Line Cook", location: "Brussels, Belgium", job_description: "Line cook needed to work Friday evening dinner rush and clean up after.", start_date: DateTime.now + 6/24r, end_date: DateTime.now + 10/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1590577976322-3d2d6e2130d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
server = Job.create!(user: emp_maxime, job_title: "Server", location: "Brussels, Belgium", job_description: "Server needed to work Friday evening dinner rush and clean up after.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1512485800893-b08ec1ea59b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudCUyMHNlcnZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
tech_support = Job.create!(user: emp_niko, job_title: "Tech Support Teaching Assistant", location: "Brussels, Belgium", job_description: "We are hosting a landing page workshop and need support for troubleshooting with attendees.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1531482615713-2afd69097998?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGVjaCUyMHdvcmtzaG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_walker_3 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Ghent, Belgium", job_description: "Dog walker needed for Ghent client.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_walker_4 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Liege, Belgium", job_description: "Dog walker needed for Liege client.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
footballer = Job.create!(user: emp_jack, job_title: "Footballer", location: "Brussels, Belgium", job_description: "Player needed for quarter-final match to prevent forfeit.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1624280157150-4d1ed8632989?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNvY2NlciUyMHBsYXllcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_walker_5 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Bruges, Belgium", job_description: "Dog walker needed for Bruges client.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")

puts "Creating skills"
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
car_maintenance = Skill.create!(name: 'car maintenance')

puts "Creating user skills"

# UserSkill.create(user: meghan, skill: cooking)
meghan.skills << web_development
meghan.skills << design
meghan.skills << cooking
meghan.skills << waitstaffing
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
ted.skills << waitstaffing
ted.skills << cleaning
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
valentin.skills << car_maintenance
valentin.skills << driving
valentin.skills << football
valentin.skills << sports
mouton.skills << web_development
mouton.skills << football
mouton.skills << sports
mouton.skills << car_maintenance
mouton.skills << driving
augusto.skills << web_development
augusto.skills << football
augusto.skills << sports
augusto.skills << car_maintenance
augusto.skills << driving
george.skills << web_development
niko.skills << web_development
niko.skills << cooking
niko.skills << cleaning
niko.skills << pet_sitting
pedro.skills << web_development
pedro.skills << languages

puts "Creating job skills"

# JobSkill.create(job: footballer, skill: football)
footballer.skills << football
dog_walker_1.skills << dog_walking
dog_walker_2.skills << dog_walking
dog_walker_3.skills << dog_walking
dog_walker_4.skills << dog_walking
dog_walker_5.skills << dog_walking
workshop_mgr.skills << car_maintenance
line_cook.skills << cooking
line_cook.skills << cleaning
server.skills << waitstaffing
server.skills << cleaning
tech_support.skills << web_development
tech_support.skills << design

puts "Creating requests"

# requests(students)
# footballer_st_req_1 = Request.create(user: tony, job: footballer, status: "pending")
footballer_st_req_2 = Request.create(user: archi, job: footballer, status: "pending")
footballer_st_req_3 = Request.create(user: augusto, job: footballer, status: "pending")

dog_walker_st_req_1 = Request.create(user: meghan, job: dog_walker_1, status: "pending")
dog_walker_st_req_2 = Request.create(user: pierrick, job: dog_walker_1, status: "pending")

tech_support_st_req_1 = Request.create(user: george, job: tech_support, status: "pending")
tech_support_st_req_1 = Request.create(user: sebastien, job: tech_support, status: "pending")

server_st_req_1 = Request.create(user: sebastien, job: server, status: "pending")
server_st_req_2 = Request.create(user: ted, job: server, status: "pending")
server_st_req_3 = Request.create(user: tony, job: server, status: "pending")
server_st_req_4 = Request.create(user: pedro, job: server, status: "pending")
server_st_req_5 = Request.create(user: niko, job: server, status: "pending")
server_st_req_6 = Request.create(user: archi, job: server, status: "pending")

line_cook_st_req_1 = Request.create(user: tony, job: line_cook, status: "pending")
line_cook_st_req_2 = Request.create(user: pedro, job: line_cook, status: "pending")
line_cook_st_req_3 = Request.create(user: niko, job: line_cook, status: "pending")
line_cook_st_req_4 = Request.create(user: archi, job: line_cook, status: "pending")


# requests(employers)
# footballer_emp_req_1 = Request.create(user: tony, job: footballer, status: "pending")

# workshop_mgr_emp_req_1 = Request.create(user: george, job: tech_support, status: "pending")
# workshop_mgr_emp_req_2 =
# workshop_mgr_emp_req_3 =

# line_cook_emp_req_1 =
# line_cook_emp_req_2 =

puts "Creating reviews"

# reviews of students
review_meghan = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_maxime = Review.create!(writer: emp_niko, recipient: maxime, job: tech_support, content: "Very helpful tech support, knows a lot about web development and CSS.")
# review_ted = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
# review_jack = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
# review_tony = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_pierrick = Review.create!(writer: emp_jack, recipient: pierrick, job: footballer, content: "Aggressive player, even gave his own teacher a black eye. Beware.")
# review_archi = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_sebastien = Review.create!(writer: emp_niko, recipient: sebastien, job: tech_support, content: "Very helpful tech support, knows a lot about web development and CSS.")
# review_antoine = Review.create!(writer: emp_niko, recipient: maxime, job: tech_support, content: "Very helpful tech support, knows a lot about web development and CSS.")
# review_val = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
# review_valentin = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_mouton = Review.create!(writer: emp_valentin, recipient: mouton, job: workshop_mgr, content: "Very nice guy and knows his car_maintenance!")
# review_augusto = Review.create!(writer: emp_antoine, recipient: meghan, job: dog_walker, content: "Great dog walker, understands different temperaments. Highly recommend!")
# review_george = Review.create!(writer: emp_niko, recipient: maxime, job: tech_support, content: "Very helpful tech support, knows a lot about web development and CSS.")
review_niko = Review.create!(writer: emp_maxime, recipient: niko, job: line_cook, content: "A beast in the kitchen.  Will get you through the dinner rush and whip your staff into shape!")
review_pedro = Review.create!(writer: emp_niko, recipient: pedro, job: tech_support, content: "Very helpful tech support, knows a lot about web development and CSS.")

# reviews of employers
review_emp_jack = Review.create!(writer: pierrick, recipient: emp_jack, job: footballer, content: "Cool app and great management!  Would happily sub as a player again.")
review_emp_antoine = Review.create!(writer: meghan, recipient: emp_antoine, job: dog_walker_1, content: "Cool app and great management!  Very easy to find all the details you need for a successful walk.")
review_emp_valentin = Review.create!(writer: mouton, recipient: emp_valentin, job: workshop_mgr, content: "Awesome location and great resource for classic car owners.  Also provided lunch!")
review_emp_maxime_1 = Review.create!(writer: niko, recipient: emp_maxime, job: line_cook, content: "Fancy restaurant with all new equipment.  Very clean. Looking to apply for a full time position.")
review_emp_maxime_2 = Review.create!(writer: meghan, recipient: emp_maxime, job: server, content: "Fancy restaurant with all new equipment.  Very clean. Looking to apply for a full time position.")
review_emp_maxime_3 = Review.create!(writer: ted, recipient: emp_maxime, job: server, content: "Fancy restaurant with all new equipment.  Very clean. Looking to apply for a full time position.")
review_emp_niko = Review.create!(writer: pedro, recipient: emp_niko, job: tech_support, content: "Nice guy who really knows his code. Also a great cafe. The cats are friendly!")

puts "Database Created!"
