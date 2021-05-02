class Booking < ApplicationRecord
  has_one :slot
  has_one :user
end
