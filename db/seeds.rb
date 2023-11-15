# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning the db..."
Property.destroy_all
User.destroy_all

# Users Seeds
user1 = User.create!(name: "Nick", password: "12345678", email: "nick_lin@lewagon.com")
file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user2 = User.create!(name: "Kimi", password: "12345678", email: "kimi@lewagon.com")
file = File.open(Rails.root.join("db/seeds/users/avatar4.png"))
user2.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user3 = User.create!(name: "Celso", password: "12345678", email: "Celso@lewagon.com")
file = File.open(Rails.root.join("db/seeds/users/avatar3.png"))
user3.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user4 = User.create!(name: "Doug", password: "12345678", email: "Doug@lewagon.com")
file = File.open(Rails.root.join("db/seeds/users/avatar2.png"))
user4.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

# users = [user2, user3, user4]
puts "#{User.count} users are created"

property_1 = Property.create!(
  user: user1,
  name: "Eternal Shadows Manor",
  description: "Discover the echoes of the past in this historic haunted manor. Located in the heart of Sleepy Hollow, this chilling abode promises an unforgettable journey through the spectral unknown.",
  category: "Hospital",
  location: "Osaka",
  price: 2000
)
file = File.open(Rails.root.join("db/seeds/properties/hospital1.jpeg"))
property_1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_2 = Property.create!(
  user: user2,
  name: "Phantom Pines Cottage",
  description: "Nestled deep within the haunted woods, this eerie cottage beckons those who dare to embrace the supernatural. Uncover the mysteries that linger in the shadows of Phantom Pines.",
  category: "House",
  location: "Tokyo",
  price: 1000
)
file = File.open(Rails.root.join("db/seeds/properties/house1.webp"))
property_2.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_3 = Property.create!(
  user: user3,
  name: "Ghoul's Retreat",
  description: "Escape to this desolate mansion perched on the edge of a forgotten cemetery. Ghoul's Retreat offers a spine-chilling sanctuary for those seeking a rendezvous with the paranormal.",
  category: "Cemetery",
  location: "Paris",
  price: 2500
)
file = File.open(Rails.root.join("db/seeds/properties/cemetery1.jpeg"))
property_3.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_4 = Property.create!(
  user: user4,
  name: "Spectral Haven House",
  description: "Dare to spend the night in a haunted Victorian mansion, where the walls whisper secrets of a bygone era. Located in the spectral town of Ravenswood, Spectral Haven House is a portal to the supernatural.",
  category: "House",
  location: "Tokyo",
  price: 3000
)
file = File.open(Rails.root.join("db/seeds/properties/house2.jpeg"))
property_4.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_5 = Property.create!(
  user: user1,
  name: "Wraithwatch Tower",
  description: "Ascend to the heights of terror in this haunted tower overlooking the cursed town of Blackstone. Wraithwatch Tower offers a panoramic view of the supernatural, with every floor harboring a new spectral surprise.",
  category: "Tower",
  location: "London",
  price: 5000
)
file = File.open(Rails.root.join("db/seeds/properties/tower1.jpeg"))
property_5.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_6 = Property.create!(
  user: user2,
  name: "Coven's Crossing Cabin",
  description: "Hidden deep in the witching woods, this cabin is a gateway to the spirit world. Coven's Crossing Cabin invites the bold to experience the paranormal wonders that lie beyond its creaking doors.",
  category: "Ferry",
  location: "Tokyo",
  price: 4000
)
file = File.open(Rails.root.join("db/seeds/properties/ferry1.jpeg"))
property_6.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_7 = Property.create!(
  user: user3,
  name: "Séance Street Manor",
  description: "Step into the mystic on Séance Street, where this enigmatic manor holds séances of centuries past. Unearth the secrets of the afterlife in this haunted haven.",
  category: "House",
  location: "Lyon",
  price: 2500
)
file = File.open(Rails.root.join("db/seeds/properties/house3.webp"))
property_7.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_8 = Property.create!(
  user: user4,
  name: "Poltergeist Point Lodge",
  description: "Perched on the edge of a cliff, Poltergeist Point Lodge offers breathtaking views and spine-tingling encounters. Embrace the supernatural as you navigate through the haunted halls of this cliffside abode.",
  category: "House",
  location: "Brisbane",
  price: 4500
)
file = File.open(Rails.root.join("db/seeds/properties/house4.jpeg"))
property_8.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_9 = Property.create!(
  user: user1,
  name: "Apparition Alley Retreat",
  description: "Escape to the outskirts of town, where Apparition Alley Retreat awaits those seeking encounters with the unseen. This secluded haunt promises a night filled with ghostly whispers and ethereal apparitions.",
  category: "House",
  location: "Nagoya",
  price: 3500
)
file = File.open(Rails.root.join("db/seeds/properties/house5.jpeg"))
property_9.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_10 = Property.create!(
  user: user2,
  name: "Sorrow's Keep Castle",
  description: "Journey to the heart of Sorrow's Keep, a haunted castle with a history steeped in tragedy. Uncover the haunted tales within its ancient walls and experience a night of spectral wonders.",
  category: "Castle",
  location: "Rome",
  price: 5000
)
file = File.open(Rails.root.join("db/seeds/properties/castle1.avif"))
property_10.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_11 = Property.create!(
  user: user3,
  name: "Widow's Watch Mansion",
  description: "Perched atop a cliff overlooking the restless sea, this haunted mansion in Moonlight Cove is rumored to be the residence of a grieving widow's ghost, forever waiting for her lost love.",
  category: "Cemetery",
  location: "Berlin",
  price: 3200
)
file = File.open(Rails.root.join("db/seeds/properties/cemetery2.jpeg"))
property_11.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_12 = Property.create!(
  user: user4,
  name: "Spectral Grove Retreat",
  description: "Hidden within an ancient, mist-shrouded forest, this haunted retreat offers an escape into nature's eerie embrace. Encounter ethereal spirits as you wander through the spectral grove.",
  category: "Cemetery",
  location: "Willowbrook",
  price: 4800
)
file = File.open(Rails.root.join("db/seeds/properties/cemetery3.jpg"))
property_12.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_13 = Property.create!(
  user: user1,
  name: "Eclipsed Elegance Estate",
  description: "Step back in time as you explore this once-grand estate in the historic district of Shadowbrook. The faded elegance is eclipsed by the paranormal, revealing a tapestry of ghostly tales.",
  category: "Forest",
  location: "Eldorado Springs",
  price: 4200
)
file = File.open(Rails.root.join("db/seeds/properties/forest1.jpeg"))
property_13.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_14 = Property.create!(
  user: user2,
  name: "Harmony Hall of Whispers",
  description: "Located in the heart of Harmonyville, this historic hall is known for its haunting whispers that echo through its corridors. Uncover the secrets of the past within its spectral walls.",
  category: "Forest",
  location: "Raven's Hollow",
  price: 2800
)
file = File.open(Rails.root.join("db/seeds/properties/forest2.jpeg"))
property_14.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_15 = Property.create!(
  user: user3,
  name: "Apparition Acres Farmhouse",
  description: "Escape to the countryside and experience the haunted history of this farmhouse surrounded by vast fields. The spirits of previous inhabitants are said to linger, manifesting in mysterious ways.",
  category: "Forest",
  location: "Crescent Bay",
  price: 3600
)
file = File.open(Rails.root.join("db/seeds/properties/forest3.jpeg"))
property_15.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_16 = Property.create!(
  user: user4,
  name: "Wraithwind Manor",
  description: "Nestled at the edge of the sinister Wraithwind Forest, this manor is a haven for spectral beings. Encounter the whispers of the wind and the shadows that dance within the haunted halls.",
  category: "Hospital",
  location: "Sterling Falls",
  price: 4500
)
file = File.open(Rails.root.join("db/seeds/properties/hospital2.jpeg"))
property_16.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_17 = Property.create!(
  user: user1,
  name: "Ephemeral Enclave",
  description: "This secluded enclave, hidden in the heart of the Enigma Mountains, is a sanctuary for ephemeral spirits. Embrace the mystical atmosphere as you traverse the ghostly terrain.",
  category: "Hospital",
  location: "Berlin",
  price: 5100
)
file = File.open(Rails.root.join("db/seeds/properties/hospital3.avif"))
property_17.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_18 = Property.create!(
  user: user2,
  name: "Labyrinth of Lost Souls",
  description: "Explore the eerie labyrinth hidden beneath the city streets. This underground network is rumored to be a passage to the afterlife, with lost souls wandering through its haunted tunnels.",
  category: "Hospital",
  location: "Berlin",
  price: 2300
)
file = File.open(Rails.root.join("db/seeds/properties/hospital4.jpeg"))
property_18.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_19 = Property.create!(
  user: user3,
  name: "Midnight Masquerade Mansion",
  description: "Enter a world of mystery and intrigue in this mansion where a ghostly masquerade unfolds every night at midnight. Witness the spirits donning phantom masks as they dance through the ages.",
  category: "Mansion",
  location: "Berlin",
  price: 3400
)
file = File.open(Rails.root.join("db/seeds/properties/mansion1.webp"))
property_19.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_20 = Property.create!(
  user: user4,
  name: "Shiverstone Castle",
  description: "Situated on the edge of a frozen lake, Shiverstone Castle is a chilling fortress with a history of icy apparitions. Encounter the frozen echoes of the past as you brave its haunted halls.",
  category: "Mansion",
  location: "Berlin",
  price: 3900
)
file = File.open(Rails.root.join("db/seeds/properties/mansion2.jpeg"))
property_20.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_21 = Property.create!(
  user: user1,
  name: "Wispwood Wonders Cottage",
  description: "Escape to the whimsical Wispwood Wonders Cottage, where mystical wisps illuminate the night. Encounter enchanted creatures and the ethereal wonders that reside in this charming abode.",
  category: "Mansion",
  location: "Berlin",
  price: 4400
)
file = File.open(Rails.root.join("db/seeds/properties/mansion3.webp"))
property_21.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_22 = Property.create!(
  user: user2,
  name: "Cursed Crypt Courtyard",
  description: "Step into the shadows of the cursed courtyard, where an ancient crypt holds the key to spectral secrets. Unearth the chilling tales that linger within the ghostly walls.",
  category: "Tower",
  location: "Berlin",
  price: 3200
)
file = File.open(Rails.root.join("db/seeds/properties/tower2.webp"))
property_22.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_23 = Property.create!(
  user: user3,
  name: "Eternal Echoes Emporium",
  description: "Venture into this haunted emporium, where echoes of past shoppers linger among the eerie merchandise. Located in the heart of Echo Hollow, it offers a shopping experience like no other.",
  category: "Tower",
  location: "Berlin",
  price: 2700
)
file = File.open(Rails.root.join("db/seeds/properties/tower3.jpeg"))
property_23.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

property_24 = Property.create!(
  user: user4,
  name: "Banshee Bluff Bungalow",
  description: "Perched on a bluff overlooking the misty moors, this bungalow is said to be haunted by the wailing banshees of old. Experience the spine-tingling echoes that resonate through the night.",
  category: "Tower",
  location: "Berlin",
  price: 3800
)
file = File.open(Rails.root.join("db/seeds/properties/tower4.webp"))
property_24.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

# property_25 = Property.create!(
#   user: user1,
#   name: "Phantom Phoenix Plaza",
#   description: "Discover the mysterious Phantom Phoenix Plaza, a shopping district frozen in time. The spectral storefronts showcase a bygone era, and the phoenix's ghostly presence is said to bring rebirth.",
#   category: "Mansion",
#   location: "Berlin",
#   price: 4900
# )
# file = File.open(Rails.root.join("db/seeds/properties/mansion2.jpeg"))
# property_25.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")














# # Property Seeds
# 100.times do
#   property = Property.new(
#     description: Faker::Books::Lovecraft.paragraphs,
#     name: Faker::Book.unique.title,
#     category: Property::CATEGORY.sample,
#     location: Faker::Address.full_address,
#     price: rand(1000..3000)
#   )
#   property.user = user1
#   property.save!

#   # Booking Seeds
#   booking = Booking.new(start_date: Date.today, end_date: Date.today + 1, final_price: 3000)
#   booking.property = property
#   booking.user = users.sample
#   booking.save!
# end

# puts "#{Property.count} property is created"
# puts "#{Booking.count} booking is created"

# validates :description, length: { minimum: 20 }
# validates :name, presence: true, uniqueness: true
# validates :category, presence: true, inclusion: CATEGORY
# validates :location, presence: true
# validates :price, presence: true, numericality: true
