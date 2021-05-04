class Slot < ApplicationRecord
  has_many :facilities, inverse_of: :slots
  has_many :bookings

  validates :start_time, :end_time, presence: true

  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end
end
