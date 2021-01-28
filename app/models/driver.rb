class Driver < ApplicationRecord
  has_many :travel_drivers
  has_many :travels, through: :travel_drivers
end
