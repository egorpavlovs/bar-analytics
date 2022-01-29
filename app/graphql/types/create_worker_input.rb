module Types
class CreateWorkerInput < Types::BaseInputObject
    argument :user_id, ID, required: true
    argument :public_catering_id, ID, required: true
    argument :role, String, required: true
    argument :rating, Float, required: false
    argument :salary, Float, required: false
    argument :beginning_work, GraphQL::Types::ISO8601DateTime, required: false
    argument :end_work, GraphQL::Types::ISO8601DateTime, required: false
  end
end
