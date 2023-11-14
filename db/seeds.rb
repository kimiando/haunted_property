# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Property.destroy_all
puts "cleaning the db..."

# Users Seeds
user1 = User.create!(name: "Nick", password: "12345678", email: "nick_lin@lewagon.com")
user2 = User.create!(name: "Kimi", password: "12345678", email: "kimi@lewagon.com")
user3 = User.create!(name: "Celso", password: "12345678", email: "Celso@lewagon.com")
user4 = User.create!(name: "Doug", password: "12345678", email: "Doug@lewagon.com")
users = [user2, user3, user4]
puts "#{User.count} users are created"

# Property Seeds
100.times do
  property = Property.new(
    description: Faker::Books::Lovecraft.paragraphs,
    name: Faker::Book.unique.title,
    category: Property::CATEGORY.sample,
    location: Faker::Address.full_address,
    price: rand(1000..3000)
  )
  property.user = user1
  property.save!

  # Booking Seeds
  booking = Booking.new(start_date: Date.today, end_date: Date.today + 1, final_price: 3000)
  booking.property = property
  booking.user = users.sample
  booking.save!
end

puts "#{Property.count} property is created"
puts "#{Booking.count} booking is created"

# validates :description, length: { minimum: 20 }
# validates :name, presence: true, uniqueness: true
# validates :category, presence: true, inclusion: CATEGORY
# validates :location, presence: true
# validates :price, presence: true, numericality: true
