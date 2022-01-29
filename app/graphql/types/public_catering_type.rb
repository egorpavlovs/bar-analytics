module Types
  class PublicCateringType < Types::BaseObject
    field :name, String, null: false
    field :rating, Float, null: true
    field :address, String, null: false
    field :start_working, GraphQL::Types::ISO8601DateTime, null: true
    field :end_working, GraphQL::Types::ISO8601DateTime, null: true
  end
end
