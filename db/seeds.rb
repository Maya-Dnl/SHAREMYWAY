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
  hobby2: "Group Fitness Classes",
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
  hobby2: "Language Learning",
  hobby3: ""
)

file = File.open("app/assets/images/peintre-masculin-dans-studio-utilisant-aquarelle-son-art.jpg")
user3.photo.attach(io: file, filename: "peintre.jpg", content_type: "image/jpg")
user3.save



user4 = User.create!(
  email: "marie.pouetpouet@gmail.com",
  password: "123456",
  username: "Marie Popi",
  language: "French",
  hobby1: "Art and Culture",
  hobby2: "Yoga and Meditation",
  hobby3: ""
)

file = File.open("app/assets/images/gros-plan-jolie-jeune-femme.jpg")
user4.photo.attach(io: file, filename: "gros-plan-jolie-jeune-femme.jpg", content_type: "image/jpg")
user4.save

user5 = User.create!(
  email: "jinette.lambert@gmail.com",
  password: "123456",
  username: "Jiji Lamb",
  language: "English",
  hobby1: "Language Learning",
  hobby2: "Photography Workshops",
  hobby3: "Backpacking and Camping"
)

file = File.open("app/assets/images/fille-brune-posant.jpg")
user5.photo.attach(io: file, filename: "fille-brune-posant.jpg", content_type: "image/jpg")
user5.save


user6 = User.create!(
  email: "axel.bouli@gmail.com",
  password: "123456",
  username: "Axou",
  language: "English",
  hobby1: "Cooking Classes",
  hobby2: "Coding and Tech Workshops",
  hobby3: "Outdoor Sports"
)

file = File.open("app/assets/images/portrait-homme-riant.jpg")
user6.photo.attach(io: file, filename: "portrait-homme-riant.jpg", content_type: "image/jpg")
user6.save


user7 = User.create!(
  email: "nono.yogi@gmail.com",
  password: "123456",
  username: "Nono",
  language: "English",
  hobby1: "Yoga and Meditation",
  hobby2: "Coding and Tech Workshops",
  hobby3: "Outdoor Sports"
)

file = File.open("app/assets/images/image-nono.png")
user7.photo.attach(io: file, filename: "image-nono.png", content_type: "image/jpg")
user7.save

user8 = User.create!(
  email: "maya.labeille@gmail.com",
  password: "123456",
  username: "Maya",
  language: "French",
  hobby1: "Road Trips and Drives",
  hobby2: "Coding and Tech Workshops",
  hobby3: "Yoga and Meditation"
)

file = File.open("app/assets/images/image-nono.png")
user8.photo.attach(io: file, filename: "image-nono.png", content_type: "image/jpg")
user8.save



event1 = Event.create!(
  name: "Mont Saint-Michel Guided Tour",
  address: "Mont-Saint-Michel, France",
  date: "21/10/2024",
  category: "Road Trips and Drives",
  description: "Led by our knowledgeable local guide, you'll discover the rich history and intriguing legends surrounding Mont Saint-Michel. Wander through the winding streets of the medieval village, marvel at the stunning Gothic abbey perched atop the rocky island, and learn about the fascinating tides that shape this unique landscape.",
  user: user2
)

file = File.open("app/assets/images/visiting-mont-saint-michel-france-tips.jpeg")
event1.photo.attach(io: file, filename: "mont-saint-michel.jpg", content_type: "image/jpeg")
event1.save

event2 = Event.create!(
  name: "Outdoor Movie Night",
  address: "Nantes, France",
  date: "13/09/2023",
  category: "Coding and Tech Workshops",
  description: "Experience the magic of outdoor cinema in the heart of Nantes! Join us for an enchanting evening under the stars as we screen a captivating film in a unique open-air setting. Bring your blankets, gather your friends and family, and immerse yourself in the cinematic atmosphere.",
  user: user8
)

file = File.open("app/assets/images/jeunes-amis-s-amusant-au-cinema-plein-air.jpg")
event2.photo.attach(io: file, filename: "pop-corn.jpg", content_type: "image/jpg")
event2.save


event6 = Event.create!(
  name: "Beaujolais Forest Hike",
  address: "Lyon, France",
  date: "16/10/2023",
  category: "Hiking and Trekking",
  description: "Explore the stunning natural beauty of Lyon with a guided hike in the Beaujolais Forest. This adventure offers a serene escape from the city, with lush greenery and scenic vistas. Hike along picturesque trails, breathe in the fresh forest air, and discover hidden gems of Lyon's countryside.",
  user: user6
)

file = File.open("app/assets/images/jeunes-amis-voyageurs-assis-rocher-dans-canyon-profitant-vue.jpg")
event6.photo.attach(io: file, filename: "forest-treck.jpg", content_type: "image/jpg")
event6.save


event7 = Event.create!(
  name: "Auvergne Volcano Camping",
  address: "Auvergne, France",
  date: "18/12/2023",
  category: "Backpacking and Camping",
  description: "Embark on a camping adventure near Lyon in the Auvergne region, known for its volcanic landscapes. Camp under the starry sky, surrounded by dramatic geological formations. Wake up to breathtaking views of volcanic peaks, and enjoy the tranquility of the great outdoors.",
  user: user5
)

file = File.open("app/assets/images/champ-tentes-entourees-collines-couvertes-verdure-sous-ciel-nuageux-pendant-coucher-du-soleil.jpg")
event7.photo.attach(io: file, filename: "camping-auvergne.jpg", content_type: "image/jpg")
event7.save


event8 = Event.create!(
  name: "Paris French Language Meetup",
  address: "Paris, France",
  date: "02/03/2024",
  category: "Language Learning",
  description: "Join a lively French language meetup group in Paris to practice your conversational skills while connecting with fellow language enthusiasts. Immerse yourself in French culture and language, and make new friends in the enchanting city of Paris.",
  user: user3
)

file = File.open("app/assets/images/femmes-voyageant-paris.jpg")
event8.photo.attach(io: file, filename: "metting-paris.jpg", content_type: "image/jpg")
event8.save


event9 = Event.create!(
  name: " Beachfront Yoga Retreat",
  address: "Yoga and Meditation",
  date: "25/09/2023",
  category: "Yoga and Meditation",
  description: "Find inner peace on the beautiful beaches of Nice with a beachfront yoga retreat. Practice yoga and meditation while listening to the soothing sound of the Mediterranean. Rejuvenate your mind and body in the tranquil surroundings of the French Riviera.",
  user: user4
)

file = File.open("app/assets/images/plein-coup-gens-faisant-du-yoga-ensemble.jpg")
event9.photo.attach(io: file, filename: "yoga-time.jpg", content_type: "image/jpg")
event9.save



event10 = Event.create!(
  name: "Photography Workshop",
  address: "Paris, France",
  date: "29/09/2023",
  category: "Photography Workshops",
  description: "Capture iconic shots of Montmartre and the Eiffel Tower with a photography workshop led by a local expert in the heart of Paris. Learn the art of photography against the backdrop of Parisian landmarks, and take home stunning images to cherish.",
  user: user5
)

file = File.open("app/assets/images/belle-femme-marchant-dans-parc-printemps1.jpg")
event10.photo.attach(io: file, filename: "photographe.jpg", content_type: "image/jpg")
event10.save



event11 = Event.create!(
  name: "Wagon Tech Seminar",
  address: "Nantes, France",
  date: "11/01/2024",
  category: "Coding and Tech Workshops",
  description: "Dive into the world of tech with seminars and workshops in Nantes, a city known for its growing tech scene and innovation. Connect with experts, explore cutting-edge technology, and gain insights into the future of the tech industry.",
  user: user6
)

file = File.open("app/assets/images/le-wagon-logo.png")
event11.photo.attach(io: file, filename: "le-wagon-logo.jpg", content_type: "image/jpg")
event11.save



event12 = Event.create!(
  name: "Tête d'Or Zoo Expedition",
  address: "Lyon, France",
  date: "01/10/2023",
  category: "Wildlife and Safari",
  description: "Discover the wonders of the animal kingdom at Parc de la Tête d'Or Zoo in Lyon. Get up close to exotic creatures from around the world and learn about conservation efforts. Explore lush botanical gardens, marvel at majestic lions, and create lasting memories with your family and friends.",
  user: user1
)

file = File.open("app/assets/images/belle-femme-asiatique-profitant-oiseau-amour-portee-main.jpg")
event12.photo.attach(io: file, filename: "zoo-time.jpg", content_type: "image/jpg")
event12.save



event13 = Event.create!(
  name: "Alpine Hiking Adventure",
  address: "Chamonix, France",
  date: "06/11/2023",
  category: "Outdoor Sports",
  description: "Embark on an alpine hiking adventure in Chamonix, known for its breathtaking mountain scenery. Explore pristine trails and experience the beauty of the French Alps. Hike to spectacular viewpoints and immerse yourself in the awe-inspiring landscapes of Chamonix.",
  user: user2
)

file = File.open("app/assets/images/dos-randonneurs-sympathiques-experimentes-costumes-ski-lumineux-chapeaux-colores.jpg")
event13.photo.attach(io: file, filename: "alpine-adventure.jpg", content_type: "image/jpg")
event13.save



event14 = Event.create!(
  name: "Riviera Fitness Bootcamp",
  address: "Côte d'Azur, France",
  date: "16/09/2023",
  category: "Group Fitness Classes",
  description: "Join a high-energy fitness bootcamp class on the French Riviera to get your heart pumping and enjoy the stunning coastal views. Challenge yourself with dynamic workouts and connect with like-minded fitness enthusiasts in a breathtaking setting.",
  user: user7
)

file = File.open("app/assets/images/femmes-au-bord-riviere-journee-ensoleillee.jpg")
event14.photo.attach(io: file, filename: "fitness-riviere.jpg", content_type: "image/jpg")
event14.save


event15 = Event.create!(
  name: "Provençal Cooking Class",
  address: "Marseille, France",
  date: "19/12/2023",
  category: "Cooking Classes",
  description: "Experience the flavors of Provence with a cooking class in Marseille, where you'll learn to prepare traditional Provençal dishes using local ingredients. Discover the secrets of French cuisine, from fragrant herbs to rich sauces, and savor your creations in a beautiful Mediterranean setting.",
  user: user3
)

file = File.open("app/assets/images/amis-faisant-cuire-nourriture-ensemble.jpg")
event15.photo.attach(io: file, filename: "cooking-provence.jpg", content_type: "image/jpg")
event15.save



event16 = Event.create!(
  name: "SunnyYogi",
  address: "Nantes, France",
  date: "09/09/2023",
  category: "Yoga and Meditation",
  description: "Unwind and rejuvenate at The Wagon in Nantes with our special yoga event led by the experienced instructor, Nolwein. This serene gathering offers a tranquil escape from the city's hustle and bustle, providing an opportunity to harmonize mind and body through yoga and meditation.",
  user: user7
)

file = File.open("app/assets/images/vue-posterieure-tenue-femme-chapeau.jpg")
event16.photo.attach(io: file, filename: "vue-posterieure-tenue-femme-chapeau.jpg", content_type: "image/jpg")
event16.save


event17 = Event.create!(
  name: "Wellness Coaching",
  address: "Arles, France",
  date: "20/09/2023",
  category: "Personal Training",
  description: "Achieve your fitness and wellness goals with personalized training sessions in the historic town of Arles, near Avignon. Work closely with certified trainers to create a customized fitness plan and enhance your overall well-being.",
  user: user3
)

file = File.open("app/assets/images/gens-diversite-classe-exercice-relax-concept.jpg")
event17.photo.attach(io: file, filename: "gens-diversite-classe-exercice-relax-concept.jpg", content_type: "image/jpg")
event17.save
