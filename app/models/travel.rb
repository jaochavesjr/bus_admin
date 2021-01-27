class Travel < ApplicationRecord
  belongs_to :origin, class_name: "City"
  belongs_to :destination, class_name: "City"
  belongs_to :car
  has_many :drivers
end
