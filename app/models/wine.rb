class Wine < ApplicationRecord
  has_and_belongs_to_many :menus

  TYPES = %w[orange red rose white].freeze

  validates :type, inclusion: { in: TYPES }
end
