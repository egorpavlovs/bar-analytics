module Types
  class GetAnyRecordsType < Types::BaseObject
    field :payload, GraphQL::Types::JSON, null: false
  end
end
