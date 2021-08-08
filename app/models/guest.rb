class Guest < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :nullify
  has_many :comments, dependent: :nullify
end
