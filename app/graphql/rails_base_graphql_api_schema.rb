class RailsBaseGraphqlApiSchema < GraphQL::Schema
  query(Types::QueryType)

  # Union and Interface Resolution
  def self.resolve_type(abstract_type, obj, ctx)
    # TODO: Implement this function
    # to return the correct object type for `obj`
    raise(GraphQL::RequiredImplementationMissingError)
  end
end
