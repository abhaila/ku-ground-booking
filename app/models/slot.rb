class Slot < ApplicationRecord
  has_many :facilities, inverse_of: :slots
  has_many :bookings
end
