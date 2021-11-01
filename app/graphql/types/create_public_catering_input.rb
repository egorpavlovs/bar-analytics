module Types
  class CreatePublicCateringInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :rating, Float, required: false
    argument :address, String, required: true
    argument :start_working, GraphQL::Types::ISO8601DateTime, required: false
    argument :end_working, GraphQL::Types::ISO8601DateTime, required: false
  end
end
