class PublicCatering < ApplicationRecord
  has_many :workers, dependent: nil
  has_many :reviews, dependent: nil

  has_many :beer_pubs, dependent: :destroy
  has_many :cafes, dependent: :destroy
  has_many :coctail_bars, dependent: :destroy
  has_many :wine_bars, dependent: :destroy

  validates :rating, numericality: { less_than_or_equal_to: 100 }
end
