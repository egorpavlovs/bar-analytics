class Review < ApplicationRecord
  has_one  :guest, dependent: :nil
  has_one  :worker, dependent: :nil
  has_one  :public_catering, dependent: :nil

  has_many :comments, dependent: :nil

  validates :rating, numericality: { less_than_or_equal_to: 100 }
end
