class BeerPub < ApplicationRecord
  belongs_to :public_catering

  scope :with_kicker, -> { where(has_kicker: true) }
end
