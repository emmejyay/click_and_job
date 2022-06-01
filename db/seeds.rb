# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Data Base"

if Rails.env.development?
  User.destroy_all
end

puts "Creating Data Base"
# users(students)
meghan = User.create(employer: false, name: "Meghan", nickname: "emmejyay", location: "Mechelen, Belgium", description: "Likes math and design, dog owner of 1. Passionate about service with a smile.", avg_rating: rand(1..5))
maxime = User.create(employer: false, name: "Maxime", nickname: "MaxiJaps", location: "Liege, Belgium", description: "Expert waiter.  Will mess you up on the basketball court.  Learning tennis, but will dominate soon.", avg_rating: rand(1..5))
ted = User.create(employer: false, name: "Ted", nickname: "tedzzer", location: "Brussels, Belgium", description: "Style is first, football celebration dances are second.", avg_rating: rand(1..5))
jack = User.create(employer: false, name: "Jack", nickname: "jackee22", location: "Louvain-la-Neuve, Belgium", description: "I speak Syriac, do you? Probably not. Serious about dying languages and football.", avg_rating: rand(1..5))
tony = User.create(employer: false, name: "Tony", nickname: "Tonyaguilar10", location: "Brussels, Belgium", description: "Football and naps are my thing.  I'll score goals for you.", avg_rating: rand(1..5))
pierrick = User.create(employer: false, name: "Pierrick", nickname: "pierrick1122", location: "Brussels, Belgium", description: "Loves rabbits, and throwing elbows in football matches", avg_rating: rand(1..5))
archi = User.create(employer: false, name: "Archi", nickname: "Archisaen", location: "Brussels, Belgium", description: "Big on sports, always ready for a game.", avg_rating: rand(1..5))
sebastien = User.create(employer: false, name: "Sebastien", nickname: "sebd141", location: "Brussels, Belgium", description: "Interested in startups, will help you create your MVP.", avg_rating: rand(1..5))
antoine = User.create(employer: false, name: "Antoine", nickname: "AntoineThiran", location: "Brussels, Belgium", description: "World-class tennis player and crafty web-developer.", avg_rating: rand(1..5))
val = User.create(employer: false, name: "Val", nickname: "valsmets", location: "Brussels, Belgium", description: "Artist-on-fire and knowledgeable about mushrooms.  I have an eye for design in webpage creation.", avg_rating: rand(1..5))
valentin = User.create(employer: false, name: "Valentin", nickname: "Valduche4", location: "Brussels, Belgium", description: "Classic car enthusiast, cyclist, and seasoned practical joker.", avg_rating: rand(1..5))
mouton = User.create(employer: false, name: "Mouton", nickname: "Mouton49", location: "Brussels, Belgium", description: "Grazing grass and headbutts all day, very at home on the football pitch.", avg_rating: rand(1..5))
augusto = User.create(employer: false, name: "Augusto", nickname: "Augusto2403", location: "Brussels, Belgium", description: "Jack-of-all-trades.  Not available during F1 races.", avg_rating: rand(1..5))
philip = User.create(employer: false, name: "Philip", nickname: "PhilipCh1994", location: "Brussels, Belgium", description: "Master debater and knowledgeable about the latest tech and accessories.  Fluent in French and Greek.", avg_rating: rand(1..5))
george = User.create(employer: false, name: "George", nickname: "gkosmos", location: "Brussels, Belgium", description: "They call me 'The Fixer'.  If you have tech/coding issues, I got your back.", avg_rating: rand(1..5))
niko = User.create(employer: false, name: "Niko", nickname: "disco-chef", location: "Brussels, Belgium", description: "Cats, coding, cooking.  In that order.", avg_rating: rand(1..5))


# users(employers)
emp_jack = User.create(employer: true, name: "Jack", company: "Direct League", location: "Brussels, Belgium", description: "Organizer for mini football matches.", avg_rating: rand(1..5))
emp_antoine = User.create(employer: true, name: "Antoine", company: "Petzr", location: "Brussels, Belgium", description: "Organizer for pet care.", avg_rating: rand(1..5))
emp_valentin = User.create(employer: true, name: "Valentin", company: "MythiCar", location: "Brussels, Belgium", description: "Organizer for classic car maintenance.", avg_rating: rand(1..5))
emp_maxime = User.create(employer: true, name: "Maxime", company: "Le Canotier", location: "Neupre, Belgium", description: "Wonderful restaurant just outside of Liege.", avg_rating: rand(1..5))
emp_niko = User.create(employer: true, name: "Niko", company: "Herbe a Chat Webcafe", location: "Brussels, Belgium", description: "Downtown Brussels internet cafe with tasty gourmet snacks.", avg_rating: rand(1..5))


# jobs
footballer = Job.create(user: emp_jack, title: "Footballer", job_description: "Player needed for quarter-final match to prevent forfeit.", start_date: , end_date: , remuneration: rand(15..45))


# skills
cooking = Skill.create(name: 'cooking')

UserSkill.create(user: meghan, skill: cooking ) # meghan.skills << cooking

# requests


puts "Data Base Created!"
