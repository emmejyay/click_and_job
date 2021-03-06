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
emp_antoine = User.create!(email: "ant@emp.com", password: "Hello1!", employer: true, name: "Antoine, owner of Petzr", img_url: "https://img.icons8.com/glyph-neue/344/man-with-dog.png", company: "Petzr", location: "Brussels, Belgium", description: "Organizer for pet care.", avg_rating: rand(3..5))
emp_valentin = User.create!(email: "vale@emp.com", password: "Hello1!", employer: true, name: "Valentin, owner of MythiCar", img_url: "https://img.icons8.com/external-flaticons-lineal-color-flat-icons/2x/external-vintage-car-museum-flaticons-lineal-color-flat-icons-3.png", company: "MythiCar", location: "Brussels, Belgium", description: "Organizer for classic car maintenance.", avg_rating: rand(3..5))
emp_maxime = User.create!(email: "max@emp.com", password: "Hello1!", employer: true, name: "Maxime, owner of Le Canotier", img_url: "https://img.icons8.com/external-flaticons-lineal-color-flat-icons/344/external-restaurant-street-food-flaticons-lineal-color-flat-icons.png", company: "Le Canotier", location: "Brussels, Belgium", description: "Wonderful restaurant with classy atmosphere.", avg_rating: rand(3..5))
emp_niko = User.create!(email: "nik@emp.com", password: "Hello1!", employer: true, name: "Niko, owner of Herbe a Chat Webcafe", img_url: "https://img.icons8.com/dotty/344/f--k-this-thing.png", company: "Herbe a Chat Webcafe", location: "Brussels, Belgium", description: "Downtown Brussels internet cafe with tasty gourmet snacks.", avg_rating: rand(3..5))
emp_ted = User.create!(email: "ted@emp.com", password: "Hello1!", employer: true, name: "Ted, owner of Chez Andre", img_url: "https://img.icons8.com/pastel-glyph/344/urban-sneakers.png", company: "Chez Andre", location: "Ghent, Belgium", description: "Stores for the latest styles in footwear.", avg_rating: rand(3..5))
emp_meghan = User.create!(email: "meg@emp.com", password: "Hello1!", employer: true, name: "Meghan, owner of Cafe 418", img_url: "https://img.icons8.com/external-flatart-icons-outline-flatarticons/2x/external-hot-drink-womens-day-flatart-icons-outline-flatarticons.png", company: "Cafe 418", location: "Mechelen, Belgium", description: "Co-working cafe serving hot drinks and light fare.", avg_rating: rand(3..5))
emp_jack = User.create!(email: "jac@emp.com", password: "Hello1!", employer: true, name: "Jack, owner of Direct League", img_url: "https://img.icons8.com/glyph-neue/344/football2.png",company: "Direct League", location: "Brussels, Belgium", description: "Organizer for mini football matches.", avg_rating: rand(3..5))

puts "Creating jobs"

# jobs
workshop_mgr_1 = Job.create!(user: emp_valentin, job_title: "Workshop Instructor", location: "Avenue de la chasse 45, Brussels, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 3/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1628577478162-d4d00467c627?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGNhciUyMHdvcmtzaG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")


cashier_4 = Job.create!(user: emp_meghan, job_title: "Cashier", location: "Buda, Belgium", job_description: "Cashier needed to check out customers for short shift", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2022/03/Image_-_Cashier_job_description_.jpeg.jpg")
sales_associate_5 = Job.create!(user: emp_ted, job_title: "Sales Associate", location: "Leuven, Belgium", job_description: "Enthusiastic salesperson needed to help sell fashionable shoes for open shift.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://www.livecareer.com/wp-content/uploads/2019/11/retail-sales-associate-customer.jpg")
dog_walker_2 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Antwerp, Belgium", job_description: "Dog walker needed for Antwerp client.", start_date: DateTime.now + 6/24r, end_date: DateTime.now + 10/24r, remuneration: rand(15..25), img_url: "https://media.istockphoto.com/photos/dog-walker-picture-id1126947324?k=20&m=1126947324&s=612x612&w=0&h=-ezh7aau25V9ELwyUvRe6PXMr5vDBFruz9JAZavBgsk=")
tech_support_5 = Job.create!(user: emp_niko, job_title: "Web Development TA", location: "Booischotseweg 42, Jauche, Belgium", job_description: "Knowledgeable person needed to help run a web development workshop session.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://cdn01.alison-static.net/careers/career/web-developer.jpg")
stock_room_1 = Job.create!(user: emp_ted, job_title: "Stock Room Associate", location: "Mons, Belgium", job_description: "Help needed to unload and organize stock room for summer delivery.", start_date: DateTime.now, end_date: DateTime.now + 6/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1609143739217-01b60dad1c67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RvcmFnZSUyMHJvb218ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")

barista_2 = Job.create!(user: emp_meghan, job_title: "Barman", location: "Rue de Baras 7, Teralfene, Belgium", job_description: "Skilled barman needed for open shift to serve our customers with a smile!", start_date: DateTime.now, end_date: DateTime.now + 5/24r, remuneration: rand(15..25), img_url: "https://www.maxicoffee.com/blog/wp-content/uploads/2017/05/formation-barista.jpg")
server_1 = Job.create!(user: emp_maxime, job_title: "Server", location: "Avenue de l'Universit?? 10, Brussels, Belgium", job_description: "Server needed to work Friday evening dinner rush and clean up after.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1512485800893-b08ec1ea59b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudCUyMHNlcnZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
workshop_mgr_3 = Job.create!(user: emp_valentin, job_title: "Workshop Instructor", location: "Route de Botrange 112, Spiere, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://ad962edbae8ba7b03b7f-d10007df79b5b7a4e475a291e50a08cf.ssl.cf3.rackcdn.com/bp-garage/ouvrir-un-garage.jpg")
sales_associate_1 = Job.create!(user: emp_ted, job_title: "Sales Associate", location: "Booischotseweg 42, Jauche, Belgium", job_description: "Enthusiastic salesperson needed to help sell fashionable shoes for open shift.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1501413827784-eb99ddfdf3b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHNob2UlMjBzdG9yZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
workshop_mgr_4 = Job.create!(user: emp_valentin, job_title: "Workshop Instructor", location: "Rue des Ecoles 280, Vivegnis, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 3/24r, remuneration: rand(15..25), img_url: "https://www.trackdays.events/wp-content/uploads/2019/07/instructeur-03.jpg")
cashier_5 = Job.create!(user: emp_meghan, job_title: "Cashier", location: "Mechelen-Nekkerspool, Belgium", job_description: "Cashier needed to check out customers for short shift", start_date: DateTime.now, end_date: DateTime.now + 9/24r, remuneration: rand(15..25), img_url: "https://www.tellermate.com/wp-content/uploads/2021/10/Cashier-iStock-1328816095-web.png")
dog_walker_4 = Job.create!(user: emp_antoine, job_title: "Dog sitter", location: "Rue Varin 22, Liege, Belgium", job_description: "Dog sitter needed for Liege client.", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://www.fetchpetcare.com/wp-content/uploads/2014/07/bigstock-152145332.jpg")

line_cook = Job.create!(user: emp_maxime, job_title: "Line Cook", location: "Boulevard du Souverain 36, Brussels, Belgium", job_description: "Line cook needed to work Friday evening dinner rush and clean up after.", start_date: DateTime.now + 6/24r, end_date: DateTime.now + 11/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1590577976322-3d2d6e2130d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
stock_room_5 = Job.create!(user: emp_ted, job_title: "Stock Room Associate", location: "Turnhout, Belgium", job_description: "Help needed to unload and organize stock room for summer delivery.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://www.vendhq.com/blog/wp-content/uploads/2021/03/iStock-1088912414.jpg")
sales_associate_3 = Job.create!(user: emp_ted, job_title: "Sales Associate", location: "Bessenveldstraat 351, Mont-gauthier, Belgium", job_description: "Enthusiastic salesperson needed to help sell fashionable shoes for open shift.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://uangonline.com/wp-content/uploads/2018/04/2-Doctor-George-Rudy-shutterstock_386720602-1024x576.jpg")
footballer_1 = Job.create!(user: emp_jack, job_title: "Footballer", location: "Rue Louis Isidore Lamey 10, Brussels, Belgium", job_description: "Player needed for quarter-final match to prevent forfeit.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://www.sudinfo.be/sites/default/files/dpistyles_v2/ena_sp_16_9_illustration_principale/2021/08/24/node_412830/48816513/public/2021/08/24/B9728092139Z.1_20210824184644_000+GL5IPRU4Q.2-0.jpg?itok=TKvHl1HJ1629832294")
workshop_mgr_5 = Job.create!(user: emp_valentin, job_title: "Workshop Instructor", location: "Kerkstraat 69, Beuzet, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://ad962edbae8ba7b03b7f-d10007df79b5b7a4e475a291e50a08cf.ssl.cf3.rackcdn.com/2457/budget-previsionnel-garage-auto.jpg")

tech_support_2 = Job.create!(user: emp_niko, job_title: "Web Development TA", location: "Strepestraat 240, Labuissi??re, Belgium", job_description: "Knowledgeable person needed to help run a web development workshop session.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://www.herzing.edu/sites/default/files/styles/fp_640_288/public/images/blog/web_developer.jpg.webp?itok=QABkWNY0")
stock_room_3 = Job.create!(user: emp_ted, job_title: "Stock Room Associate", location: "Ostend, Belgium", job_description: "Help needed to unload and organize stock room for summer delivery.", start_date: DateTime.now, end_date: DateTime.now + 6/24r, remuneration: rand(15..25), img_url: "https://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2021/10/31/node_1092400/53841940/public/2021/10/31/B9728779337Z.1_20211031095241_000%2BGVUJ76E3D.3-0.jpg?itok=p8gSHo7c1635670744")
dog_walker_3 = Job.create!(user: emp_antoine, job_title: "Dog sitter", location: "Hundelgemsesteenweg 36, 9820 Ghent, Belgium", job_description: "Dog sitter needed for Ghent client.", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://media.istockphoto.com/photos/group-of-dog-walkers-working-together-picture-id1345672917?k=20&m=1345672917&s=612x612&w=0&h=pNO393ABNa5zuptQ1KZZ817BUIWiepHFUzmsXCWrP28=")
server_3 = Job.create!(user: emp_meghan, job_title: "Server", location: "Mechelen, Belgium", job_description: "Server needed for early morning breakfast shift.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBjyxwGvxRZC-7D2M7FsvCIhEcZcWZ9ObkHw&usqp=CAU")
workshop_mgr_2 = Job.create!(user: emp_valentin, job_title: "Workshop Instructor", location: "Dr??ve des Bouleaux 311, Enghien, Belgium", job_description: "Client is looking for someone to help host a classic car maintenance workshop.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://www.printoclock.com/blog/wp-content/uploads/2020/11/communication-garagiste.jpg")
tech_support_4 = Job.create!(user: emp_niko, job_title: "Web Developer", location: "Lange Elzenstraat 29, Bree, Belgium", job_description: "Knowledgeable person needed to help run a web development workshop session.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://www.adalot.com/thumbs/thumb-website-development-process-5-steps-to-success-1980x1114-people-working.jpg")

sales_associate_2 = Job.create!(user: emp_ted, job_title: "Sales Associate", location: "Rue du Pont Simon 17, Arbrefontaine, Belgium", job_description: "Enthusiastic salesperson needed to help sell fashionable shoes for open shift.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://miro.medium.com/max/900/1*QWAnTtSgqPKIsP8X-iK7RA.png")
dog_walker_3 = Job.create!(user: emp_antoine, job_title: "Dog sitter", location: "Hundelgemsesteenweg 36, 9820 Ghent, Belgium", job_description: "Dog sitter needed for Ghent client.", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://media.istockphoto.com/photos/group-of-dog-walkers-working-together-picture-id1345672917?k=20&m=1345672917&s=612x612&w=0&h=pNO393ABNa5zuptQ1KZZ817BUIWiepHFUzmsXCWrP28=")
cashier_3 = Job.create!(user: emp_meghan, job_title: "Cashier", location: "Weerde, Belgium", job_description: "Cashier needed to check out customers for short shift", start_date: DateTime.now, end_date: DateTime.now + 9/24r, remuneration: rand(15..25), img_url: "https://images.ctfassets.net/txhaodyqr481/IZHRO10qVci6pUdKOm31A/99ed7d74c8f7221becf37e016071ca39/shutterstock_687139360.jpg")
barista_5 = Job.create!(user: emp_meghan, job_title: "Barista", location: "Rue de Li??ge 433, Loonbeek, Belgium", job_description: "Skilled barista needed for open shift to serve our customers with a smile!", start_date: DateTime.now, end_date: DateTime.now + 4/24r, remuneration: rand(15..25), img_url: "https://as1.ftcdn.net/v2/jpg/01/84/40/44/1000_F_184404425_QqXLEpZE8Tjna6MbZqgiMsO1mjIxT0Wj.jpg")

stock_room_2 = Job.create!(user: emp_ted, job_title: "Stock Room Associate", location: "Bruges, Belgium", job_description: "Help needed to unload and organize stock room for summer delivery.", start_date: DateTime.now, end_date: DateTime.now + 6/24r, remuneration: rand(15..25), img_url: "https://cdn.copesan.com/wp-content/uploads/2020/11/AdobeStock_8897399-1-scaled.jpeg")
footballer_2 = Job.create!(user: emp_jack, job_title: "Footballer", location: "Putstraat 49, Slins, Belgium", job_description: "Player needed for quarter-final match to prevent forfeit.", start_date: DateTime.now, end_date: DateTime.now + 2/24r, remuneration: rand(15..25), img_url: "https://www.lesoir.be/sites/default/files/dpistyles_v2/ls_16_9_856w/2021/06/16/node_378527/28173147/public/2021/06/16/B9727384575Z.1_20210616100905_000+GGAIBBPPH.2-0.jpg?itok=whuQhJ5L1623830950")
sales_associate_4 = Job.create!(user: emp_ted, job_title: "Sales Associate", location: "Route de Neufchateau 246, Heinsch, Belgium", job_description: "Enthusiastic salesperson needed to help sell fashionable shoes for open shift.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://i0.wp.com/www.businessupside.in/wp-content/uploads/2021/10/good-salesman.png?fit=1200%2C675&ssl=1")
barista_3 = Job.create!(user: emp_meghan, job_title: "Barista", location: "Rue des Honnelles 281, Xhendelesse, Belgium", job_description: "Skilled barista needed for open shift to serve our customers with a smile!", start_date: DateTime.now, end_date: DateTime.now + 3/24r, remuneration: rand(15..25), img_url: "https://blog.grancoffee.com.br/wp-content/uploads/sites/2/2020/10/20789_BlogPost_Miniatura-3.png")
stock_room_4 = Job.create!(user: emp_ted, job_title: "Stock Room Associate", location: "Namur, Belgium", job_description: "Help needed to unload and organize stock room for summer delivery.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://images.practicaladultinsights.com/stockroom.jpg")

cashier_1 = Job.create!(user: emp_meghan, job_title: "Cashier", location: "Vilvoorde, Belgium", job_description: "Cashier needed to check out customers for short shift", start_date: DateTime.now, end_date: DateTime.now + 10/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1556742393-d75f468bfcb0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FzaGllcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
barista_1 = Job.create!(user: emp_meghan, job_title: "Barista", location: "Witbakkerstraat 497, Sint-genesius-rode, Belgium", job_description: "Skilled barista needed for open shift to serve our customers with a smile!", start_date: DateTime.now, end_date: DateTime.now + 6/24r, remuneration: rand(15..25), img_url: "https://images.unsplash.com/photo-1507914464562-6ff4ac29692f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmFyaXN0YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
tech_support_1 = Job.create!(user: emp_niko, job_title: "Web Developer", location: "Korte Noordsstraat 266, Vaalbeek, Belgium", job_description: "Knowledgeable person needed to help run a web development workshop session.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://www.onblastblog.com/wp-content/uploads/2019/09/09aea00fc018749c1c255ddfd594b218.jpeg")

cashier_2 = Job.create!(user: emp_meghan, job_title: "Cashier", location: "Eppegem, Belgium", job_description: "Cashier needed to check out customers for short shift", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://www.thebalancecareers.com/thmb/HGzUrQnNC15vOWCOSyga9KjNncc=/735x0/GettyImages-1037570160-235dbc4d28a94441ac4b0fdca2cdc5b2.jpg")
server_2 = Job.create!(user: emp_niko, job_title: "Server", location: "Brussels, Belgium", job_description: "Server needed to work afternon open shift.", start_date: DateTime.now, end_date: DateTime.now + 1/24r, remuneration: rand(15..25), img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuLncVz2eaJsnPzmoZNGS4YnPQNYv0Z8aaOg&usqp=CAU")
tech_support_3 = Job.create!(user: emp_niko, job_title: "Web Development TA", location: "Avenue Emile Vandervelde 182, Rosi??res, Belgium", job_description: "Knowledgeable person needed to help run a web development workshop session.", start_date: DateTime.now, end_date: DateTime.now + 7/24r, remuneration: rand(15..25), img_url: "https://dailynationtoday.com/wp-content/uploads/2021/10/201009-codingcomputer-stock.jpg")
barista_4 = Job.create!(user: emp_meghan, job_title: "Barman", location: "Rue de la Sarthe 279, Houthalen, Belgium", job_description: "Skilled barman needed for open shift to serve our customers with a smile!", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://www.deltawatersofteners.be/assets/media/16/koffiezetten-als-een-heuse-barista-ontdek-onze-tips.jpg")
dog_walker_1 = Job.create!(user: emp_antoine, job_title: "Dog Walker", location: "Hugo Losschaertstraat 8000, Bruges, Belgium", job_description: "Dog walker needed for Bruges client.", start_date: DateTime.now, end_date: DateTime.now + 8/24r, remuneration: rand(15..25), img_url: "https://assets.espace-autoentrepreneur.com/ruche_articles/pet-sitter-auto-entrepreneur/garde-animaux-auto-entrepreneur.jpeg")


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
barista = Skill.create!(name: 'barista')
sales = Skill.create!(name: 'sales')
fashion = Skill.create!(name: 'fashion')
cashier = Skill.create!(name: 'cashier')
stockroom = Skill.create!(name: 'stockroom')

puts "Creating user skills"

# UserSkill.create(user: meghan, skill: cooking)
meghan.skills << web_development
meghan.skills << design
meghan.skills << dog_walking
meghan.skills << pet_sitting
maxime.skills << waitstaffing
maxime.skills << cleaning
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
tony.skills << languages
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
val.skills << fashion
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
footballer_1.skills << football
footballer_2.skills << football
dog_walker_1.skills << dog_walking
dog_walker_2.skills << dog_walking
dog_walker_3.skills << dog_walking
dog_walker_4.skills << dog_walking
workshop_mgr_1.skills << car_maintenance
workshop_mgr_2.skills << car_maintenance
workshop_mgr_3.skills << car_maintenance
workshop_mgr_4.skills << car_maintenance
workshop_mgr_5.skills << car_maintenance
line_cook.skills << cooking
line_cook.skills << cleaning
server_1.skills << waitstaffing
server_1.skills << cleaning
server_2.skills << waitstaffing
server_2.skills << cleaning
server_3.skills << waitstaffing
server_3.skills << cleaning
tech_support_1.skills << web_development
tech_support_1.skills << design
tech_support_2.skills << web_development
tech_support_2.skills << design
tech_support_3.skills << web_development
tech_support_3.skills << design
tech_support_4.skills << web_development
tech_support_4.skills << design
tech_support_5.skills << web_development
tech_support_5.skills << design
workshop_mgr_1.skills << car_maintenance
workshop_mgr_2.skills << car_maintenance
workshop_mgr_3.skills << car_maintenance
workshop_mgr_4.skills << car_maintenance
workshop_mgr_5.skills << car_maintenance
sales_associate_1.skills << sales
sales_associate_2.skills << sales
sales_associate_3.skills << sales
sales_associate_4.skills << sales
sales_associate_5.skills << sales
stock_room_1.skills << stockroom
stock_room_2.skills << stockroom
stock_room_3.skills << stockroom
stock_room_4.skills << stockroom
stock_room_5.skills << stockroom
cashier_1.skills << cashier
cashier_2.skills << cashier
cashier_3.skills << cashier
cashier_4.skills << cashier
cashier_5.skills << cashier
barista_1.skills << barista
barista_1.skills << cleaning
barista_2.skills << barista
barista_2.skills << cleaning
barista_3.skills << barista
barista_3.skills << cleaning
barista_4.skills << barista
barista_4.skills << cleaning
barista_5.skills << barista
barista_5.skills << barista

puts "Creating requests"

# requests(students)
# footballer_st_req_1 = Request.create(user: tony, job: footballer, status: "pending")
footballer_st_req_2 = Request.create(user: archi, job: footballer_1, status: "pending")
footballer_st_req_3 = Request.create(user: augusto, job: footballer_1, status: "pending")

dog_walker_st_req_1 = Request.create(user: meghan, job: dog_walker_1, status: "pending")
dog_walker_st_req_2 = Request.create(user: pierrick, job: dog_walker_1, status: "pending")

# tech_support_st_req_1 = Request.create(user: george, job: tech_support, status: "pending")
# tech_support_st_req_1 = Request.create(user: sebastien, job: tech_support, status: "pending")

server_st_req_1 = Request.create(user: sebastien, job: server_1, status: "pending")
server_st_req_2 = Request.create(user: ted, job: server_1, status: "pending")
server_st_req_3 = Request.create(user: tony, job: server_1, status: "pending")
server_st_req_4 = Request.create(user: pedro, job: server_1, status: "pending")
server_st_req_5 = Request.create(user: niko, job: server_1, status: "pending")
server_st_req_6 = Request.create(user: archi, job: server_1, status: "pending")

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
review_maxime = Review.create!(writer: emp_niko, recipient: maxime, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business.")
review_ted = Review.create!(writer: emp_niko, recipient: ted, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business.")
review_ted = Review.create!(writer: emp_meghan, recipient: ted, job: server_1, content: "Always happy to work with Ted. Great personality and my customers love him.")
review_jack = Review.create!(writer: emp_antoine, recipient: jack, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_tony = Review.create!(writer: emp_antoine, recipient: tony, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_pierrick = Review.create!(writer: emp_jack, recipient: pierrick, job: footballer_1, content: "Aggressive player, even gave his own teacher a black eye. Beware.")
review_archi = Review.create!(writer: emp_antoine, recipient: archi, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_sebastien = Review.create!(writer: emp_maxime, recipient: sebastien, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business.")
review_antoine = Review.create!(writer: emp_maxime, recipient: antoine, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business.")
review_val = Review.create!(writer: emp_antoine, recipient: val, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_valentin = Review.create!(writer: emp_antoine, recipient: valentin, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_mouton = Review.create!(writer: emp_valentin, recipient: mouton, job: workshop_mgr_1, content: "Very nice guy and knows his car_maintenance!")
review_augusto = Review.create!(writer: emp_antoine, recipient: augusto, job: dog_walker_1, content: "Great dog walker, understands different temperaments. Highly recommend!")
review_george = Review.create!(writer: emp_niko, recipient: george, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business.")
review_niko = Review.create!(writer: emp_maxime, recipient: niko, job: line_cook, content: "A beast in the kitchen.  Will get you through the dinner rush and whip your staff into shape!")
review_pedro = Review.create!(writer: emp_niko, recipient: pedro, job: server_1, content: "Very helpful around the restuarant, knows a lot about serving and running a restaurant business..")

# reviews of employers
review_emp_jack = Review.create!(writer: pierrick, recipient: emp_jack, job: footballer_1, content: "Cool app and great management!  Would happily sub as a player again.")
review_emp_antoine = Review.create!(writer: meghan, recipient: emp_antoine, job: dog_walker_1, content: "Cool app and great management!  Very easy to find all the details you need for a successful walk.")
review_emp_valentin = Review.create!(writer: mouton, recipient: emp_valentin, job: workshop_mgr_1, content: "Awesome location and great resource for classic car owners.  Also provided lunch!")
review_emp_maxime_1 = Review.create!(writer: niko, recipient: emp_maxime, job: line_cook, content: "Fancy restaurant with all new equipment.  Very clean. Looking to apply for a full time position.")
review_emp_maxime_2 = Review.create!(writer: meghan, recipient: emp_maxime, job: server_1, content: "Nice restaurant in a nice area.  Very organized and easy to learn the ropes quickly.")
review_emp_maxime_3 = Review.create!(writer: ted, recipient: emp_maxime, job: server_1, content: "Fancy restaurant with all new equipment.  Very clean. Looking to apply for a full time position.")
review_emp_niko = Review.create!(writer: pedro, recipient: emp_niko, job: server_1, content: "Nice guy who really knows his code. Also a great cafe. The cats are friendly!")

puts "Database Created!"
