class Guest < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :nil
  has_many :comments, dependent: :nil
end
