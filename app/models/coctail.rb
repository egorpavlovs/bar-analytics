class Coctail < ApplicationRecord
  has_and_belongs_to_many :menus

  TYPES = %w[creamy refreshing strong].freeze

  validates :type, inclusion: { in: TYPES }
end
