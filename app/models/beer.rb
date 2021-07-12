class Beer < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :prices

  TYPES = %w[lager ale stout].freeze

  validates :type, inclusion: { in: TYPES }
end
