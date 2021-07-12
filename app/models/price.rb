class Price < ApplicationRecord
  has_and_belongs_to_many :beers
  has_and_belongs_to_many :octails
  has_and_belongs_to_many :foods
  has_and_belongs_to_many :wines

  CURRENCY_TYPES = %w[rub eur usd].freeze

  validates :currency, inclusion: { in: CURRENCY_TYPES }
end
