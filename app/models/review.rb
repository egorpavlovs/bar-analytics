class Review < ApplicationRecord
  has_one  :guest, dependent: :nullify
  has_one  :worker, dependent: :nullify
  has_one  :public_catering, dependent: :nullify

  has_many :comments, dependent: :nullify

  validates :rating, numericality: { less_than_or_equal_to: 100 }
end
