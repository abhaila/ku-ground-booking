class Facility < ApplicationRecord
  has_many :schedules
  has_many_attached :photos
  accepts_nested_attributes_for :schedules, allow_destroy: true

  has_many :bookings, dependent: :destroy, inverse_of: :trainer
  accepts_nested_attributes_for :bookings

  has_many :slots, through: :bookings

  def open_weekends?
    regular_schedules.exists?(weekday: [6, 7])
  end

  def open_after_six?
    regular_schedules.where("closes_at > ?", Time.parse("18:00")).exists?
  end
end
