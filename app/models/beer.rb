class Beer < ApplicationRecord
  has_and_belongs_to_many :menus

  TYPES = %w[lager ale stout].freeze

  validates :type, inclusion: { in: TYPES }
end
