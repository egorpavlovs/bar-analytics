module Types
  class WineBarType < Types::BaseObject
    field :public_catering_id, ID, null: false
    field :has_sommelier, Boolean, null: true
  end
end
