class Slot < ApplicationRecord
  has_many :facilities, through: :bookings
  has_many :clients, through: :bookings
  has_many :bookings, inverse_of: :slots
  accepts_nested_attributes_for :bookings
end
