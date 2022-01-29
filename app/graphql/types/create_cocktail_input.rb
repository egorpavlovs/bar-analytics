module Types
  class CreateCocktailInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :alcogolic_composition, String, required: false
    argument :kind, String, required: false # TODO: use validation
  end
end
