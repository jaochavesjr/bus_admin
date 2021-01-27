class Client < ApplicationRecord

  validates :name_full, presence: true
  validates :rg, presence: true
  validates :cellphone, presence: true
end
