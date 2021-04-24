class Facility < ApplicationRecord
  has_many :schedules
  accepts_nested_attributes_for :schedules, allow_destroy: true
end
