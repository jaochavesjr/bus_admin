class Car < ApplicationRecord

  validates :model, presence: true
  validates :plate, presence: true
  validates :number_seats, presence: true
end
