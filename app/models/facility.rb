class Facility < ApplicationRecord
  has_many_attached :photos
  has_many :slots
  accepts_nested_attributes_for :slots, allow_destroy: true
  has_many :bookings, through: :slots
end
