module Types
  class WorkerType < Types::BaseObject
    field :user_id, ID, null: false
    field :public_catering_id, ID, null: false
    field :role, String, null: false
    field :rating, Float, null: false
    field :salary, Float, null: true
    field :beginning_work, GraphQL::Types::ISO8601DateTime, null: false
    field :end_work, GraphQL::Types::ISO8601DateTime, null: true
  end
end
