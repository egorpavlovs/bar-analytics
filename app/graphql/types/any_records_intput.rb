module Types
  class AnyRecordsIntput < Types::BaseInputObject
    argument :model_name, String, required: true
    argument :payload, GraphQL::Types::JSON, required: true
  end
end
