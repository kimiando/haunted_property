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
