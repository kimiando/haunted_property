# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
puts "cleaning the db..."

# Users Seeds
user1 = User.create!(name: "Nick", password: "12345678", email: "nick_lin@lewagon.com")
user2 = User.create!(name: "Kimi", password: "12345678", email: "kimi@lewagon.com")

puts "#{User.count} users are created"

# Property Seeds
property = Property.new(
  description: "it is made from the 90's and there are a lot of monsters",
  name: "Monster Mansion",
  category: "Mansion",
  location: "123 Street",
  price: 3000
)
property.user = user1
property.save!

puts "#{Property.count} property is created"

# Booking Seeds
booking = Booking.new(start_date: Date.today, end_date: Date.today + 1, final_price: 3000)
booking.property = property
booking.user = user2

booking.save!
puts "#{Booking.count} booking is created"

# validates :description, length: { minimum: 20 }
# validates :name, presence: true, uniqueness: true
# validates :category, presence: true, inclusion: CATEGORY
# validates :location, presence: true
# validates :price, presence: true, numericality: true
