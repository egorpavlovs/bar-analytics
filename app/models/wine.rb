class Wine < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :prices

  TYPES = %w[orange red rose white].freeze

  validates :type, inclusion: { in: TYPES }
end
