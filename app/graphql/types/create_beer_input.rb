module Types
  class CreateBeerInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :abv, Float, required: false
    argument :ibu, Float, required: false
    argument :country, String, required: false
    argument :type, String, required: false # TODO: use validations
  end
end
