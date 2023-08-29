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
# ["music", "trip", "fashion", "mathematics", "coffee", "movies"]
user1 = User.create!(
  email: "beatrice-routine@icloud.com",
  password: "123456",
  username: "Bea Routine",
  language: "French",
  hobby1: "coffee",
  hobby2: "music",
  hobby3: "movies"
)

user2 = User.create!(
  email: "steven-richard@outlook.com",
  password: "123456",
  username: "Steven Richar44",
  language: "French",
  hobby1: "music",
  hobby2: "trip",
  hobby3: "fashion"
)

user3 = User.create!(
  email: "john.marchand@gmail.com",
  password: "123456",
  username: "John Marchand",
  language: "French",
  hobby1: "trip",
  hobby2: "music",
  hobby3: ""
)

event1 = Event.create!(
  name: "The great trip",
  address: "The saint michel mont",
  date: "02/09/2024",
  description: "Come with us for the best holidays of your life",
  user: user2
)

event2 = Event.create!(
  name: "Movies party",
  address: "09 avenue de la poule noire, Nantes",
  date: "02/09/2023",
  description: "Come with us for the best movies party of your life",
  user: user3
)

event3 = Event.create!(
  name: "Look fashion style",
  address: "04 rue des beaux styles, strasbourg",
  date: "02/08/2023",
  description: "Fashion style is in your bear",
  user: user1
)

event4 = Event.create!(
  name: "Mathematic with us",
  address: "1 rue des mathematicien",
  date: "02/11/2023",
  description: "With us become more stronger in mathematics",
  user: user2
)

event5 = Event.create!(
  name: "Dance witch us for all night",
  address: "7 rue des danseur, paris",
  date: "24/11/2023",
  description: "Danse all night and discover paris-night life",
  user: user3
)

# Create a booking associated with the user
booking1 = Booking.create!(
  user: user2,
  event: event1
)
