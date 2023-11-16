class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :end_date, comparison: { greater_than: :start_date }
  enum status: { pending: 0, accepted: 1, rejected: 2 }
  # scope :pending, -> { pending }
  # scope :pending, where(status: :pending)
  # scope :rejected, where(status: :rejected)
end
