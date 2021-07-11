class PublicCatering < ApplicationRecord
  has_many :workers, dependent: nil

  validates :rating, numericality: { less_than_or_equal_to: 100 }
end
