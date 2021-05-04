class Facility < ApplicationRecord
  has_many_attached :photos
  has_many :slots, autosave: true
  accepts_nested_attributes_for :slots
  has_many :bookings, through: :slots
end
