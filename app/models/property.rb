class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy

  CATEGORY = ["Hospital", "House", "Mansion", "Cemetery", "Forest", "Tower", "Castle", "Ferry"]

  validates :description, length: { minimum: 20 }
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: CATEGORY
  validates :location, presence: true
  validates :price, presence: true, numericality: true
end
