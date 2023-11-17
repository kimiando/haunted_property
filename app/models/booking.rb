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

  def number_of_days
    ((end_date - start_date) / (60 * 60 * 24)).to_i
  end

  def total_price
    property.price * number_of_days
  end
end
