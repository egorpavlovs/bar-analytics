class Guest < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :nil
end
