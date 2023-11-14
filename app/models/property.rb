class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  CATEGORY = ["Hospitals", "Houses", "Mansion", "Cemetery", "Forest"]

  validates :description, length: { minimum: 20 }
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: CATEGORY
  validates :location, presence: true
  validates :price, presence: true, numericality: true
end
