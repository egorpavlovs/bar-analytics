module Types
  class QueryType < Types::BaseObject
    field :me, resolver: Resolvers::CurrentUser
    field :activities, resolver: Resolvers::Activities, connection: true
    field :find_user, resolver: Resolvers::FindUser
    field :get_any_records, resolver: Resolvers::GetAnyRecords
  end
end
