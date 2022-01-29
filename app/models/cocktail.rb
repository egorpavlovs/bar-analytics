class Cocktail < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :prices

  KINDS = %w[creamy refreshing strong].freeze

  validates :kind, inclusion: { in: KINDS }
end
