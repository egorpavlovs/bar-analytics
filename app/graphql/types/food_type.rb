module Types
  class FoodType < Types::BaseObject
    field :name, String, null: true
    field :product_composition, String, null: true
  end
end
