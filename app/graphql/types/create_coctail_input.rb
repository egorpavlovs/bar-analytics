module Types
  class CreateCoctailInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :alcogolic_composition, String, required: false
    argument :type, String, required: false # TODO: use validation
  end
end
