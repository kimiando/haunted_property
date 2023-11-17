class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :end_date, comparison: { greater_than: :start_date }
  enum status: { pending: 0, accepted: 1, rejected: 2 }

  scope :past, -> { where("end_date < ?", Date.today) }
  scope :future, -> { where("end_date >= ?", Date.today) }

  scope :pending,  -> { where(status: :pending) }
  scope :accepted, -> { where(status: :accepted) }
  scope :rejected, -> { where(status: :rejected) }
end
