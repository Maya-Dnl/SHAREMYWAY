# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning data base"
Booking.destroy_all
FlyingSaucer.destroy_all
User.destroy_all

puts "starting seed"

user1 = User.create!(
  email: "user10@example.com",
  password: "pass10",
  password_confirmation: "pass10",
  username: "example_user10",
  language: "French",
  hobby1: "coffee",
  hobby2: "music",
  hobby3: "movies"
)

user2 = User.create!(
  email: "user10@example.com",
  password: "pass10",
  password_confirmation: "pass10",
  username: "example_user10",
  language: "French",
  hobby1: "music",
  hobby2: "trip",
  hobby3: "fashion"
)

user3 = User.create!(
  email: "user10@example.com",
  password: "pass10",
  password_confirmation: "pass10",
  username: "example_user10",
  language: "French",
  hobby1: "trip",
  hobby2: "music",
  hobby3: "mathematics"
)

event1 = Event.create!(
  name: "the great trip",
  address: "the saint michel mont",
  date: "02/09/2024",
  description: "come with us for the best holidays of your life",
  user: user2
)

event2 = Event.create!(
  name: "movies party",
  address: "09 avenue de la poule noire, Nantes",
  date: "02/09/2023",
  description: "come with us for the best movies party of your life",
  user: user3
)

event3 = Event.create!(
  name: "look fashion style",
  address: "04 rue des beaux styles, strasbourg",
  date: "02/08/2023",
  description: "fashion style is in your bear",
  user: user1
)

event4 = Event.create!(
  name: "mathematic with us",
  address: "1 rue des mathematicien",
  date: "02/11/2023",
  description: "with us become more stronger in mathematics",
  user: user2
)

event5 = Event.create!(
  name: "dance witch us for all night",
  address: "7 rue des danseur, paris",
  date: "24/11/2023",
  description: "danse all night and discover paris-night life",
  user: user3
)

# Create a booking associated with the user
booking1 = Booking.create!(
  user: user2,
  event: event1
)
