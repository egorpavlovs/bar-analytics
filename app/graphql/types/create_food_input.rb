module Types
  class CreateFoodInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :product_composition, String, required: true
  end
end
