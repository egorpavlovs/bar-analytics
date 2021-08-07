class Worker < ApplicationRecord
  belongs_to :user
  belongs_to :public_catering

  has_many :reviews, dependent: :nil
  has_many :comments, dependent: :nil

  ROLES = %w[
    waiter
    bartender
    manager
    director
    hostess
    cleaner
  ].freeze

  validates :rating, numericality: { less_than_or_equal_to: 100 }
  validates :role, inclusion: { in: ROLES }
end
