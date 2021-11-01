module Types
  class BeerType < Types::BaseObject
    field :name, String, null: false
    field :abv, Float, null: true
    field :ibu, Float, null: true
    field :country, String, null: true
    field :type, String, null: true # TODO: use validations
  end
end
