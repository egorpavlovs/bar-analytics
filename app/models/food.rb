class Food < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :prices
end
