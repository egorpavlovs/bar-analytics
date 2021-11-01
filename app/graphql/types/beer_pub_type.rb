module Types
  class BeerPubType < Types::BaseObject
    field :public_catering_id, ID, null: false
    field :has_kicker, Boolean, null: true
  end
end
