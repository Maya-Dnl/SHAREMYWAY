require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning data base"
Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "starting seed"
# ["Nature and Outdoors", "Education and Learning", "Sports", "Games and Entertainment", "Food and Gastronomy", "Art and Culture", "Science and Exploration", ""]
user1 = User.create!(
  email: "beatrice-routine@icloud.com",
  password: "123456",
  username: "Bea Routine",
  language: "French",
  hobby1: "Nature and Outdoors",
  hobby2: "Games and Entertainment",
  hobby3: "Food and Gastronomy"
)

file = File.open("app/assets/images/bouchent-portrait-jolie-jeune-femme-isolee.jpg")
user1.photo.attach(io: file, filename: "portrait.jpg", content_type: "image/jpg")
user1.save

user2 = User.create!(
  email: "steven-richard@outlook.com",
  password: "123456",
  username: "Steven Richar44",
  language: "French",
  hobby1: "Sports",
  hobby2: "Science and Exploration",
  hobby3: "Nature and Outdoors"
)

file = File.open("app/assets/images/mec-mecontent-fronce-sourcils-indique-index-au-dessus-porte-lunettes-pull-vert-mecontentement-face-aux-mauvaises-nouvelles.jpg")
user2.photo.attach(io: file, filename: "men.jpg", content_type: "image/jpg")
user2.save

user3 = User.create!(
  email: "john.marchand@gmail.com",
  password: "123456",
  username: "John Marchand",
  language: "French",
  hobby1: "Art and Culture",
  hobby2: "Education and Learning",
  hobby3: ""
)

file = File.open("app/assets/images/peintre-masculin-dans-studio-utilisant-aquarelle-son-art.jpg")
user3.photo.attach(io: file, filename: "peintre.jpg", content_type: "image/jpg")
user3.save

event1 = Event.create!(
  name: "The great trip",
  address: "Mont-Saint-Michel",
  date: "02/09/2024",
  description: "Come with us for the best holidays of your life",
  user: user2
)


file = File.open("app/assets/images/visiting-mont-saint-michel-france-tips.jpeg")
event1.photo.attach(io: file, filename: "mont-saint-michel.jpg", content_type: "image/jpeg")
event1.save


event2 = Event.create!(
  name: "Movies party",
  address: "Nantes",
  date: "02/09/2023",
  description: "Come with us for the best movies party of your life",
  user: user3
)

file = File.open("app/assets/images/bol-verre-pop-corn-telecommande-arriere-plan-television-fonctionne (1).jpg")
event2.photo.attach(io: file, filename: "pop-corn.jpg", content_type: "image/jpg")
event2.save

event3 = Event.create!(
  name: "Sport in football arena",
  address: "Paris",
  date: "02/08/2023",
  description: "Come with us for look paris saint germain vs manchester united",
  user: user1
)

file = File.open("app/assets/images/62006658 (1).jpg")
event3.photo.attach(io: file, filename: "sport.jpg", content_type: "image/jpg")
event3.save

event4 = Event.create!(
  name: "Learn Food and Gastronomy",
  address: "Toulouse",
  date: "02/11/2023",
  description: "Learn the good food with us !",
  user: user2
)

file = File.open("app/assets/images/mode-vie-gens-apprennent-faire-sushis.jpg")
event4.photo.attach(io: file, filename: "sushi.jpg", content_type: "image/jpg")
event4.save

event5 = Event.create!(
  name: "Science all night",
  address: "Bordeaux",
  date: "24/11/2023",
  description: "Learn atome and physical rules with us",
  user: user3
)

file = File.open("app/assets/images/professeur-sciences-regardant-au-microscope-etudiants-debout-autour-lui-ecrivant-dans-cahier.jpg")
event5.photo.attach(io: file, filename: "science.jpg", content_type: "image/jpg")
event5.save

# Create a booking associated with the user
booking1 = Booking.create!(
  user: user2,
  event: event1
)
