module Types
  class CreateCocktailBarInput < Types::BaseInputObject
    argument :public_catering_id, ID, required: true
  end
end
