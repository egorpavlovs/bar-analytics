module Resolvers
  class GetAnyRecords < Resolvers::Base
    ALLOWED_MODELS = %w[
      BeerPub CocktailBar Food Price
      Review WineBar Cafe Comment Guest PublicCatering
      User Worker Beer Cocktail Menu Wine
    ].freeze

    argument :input, Types::AnyRecordsIntput, required: true

    type Types::GetAnyRecordsType, null: true

    def resolve(input:)
      model_name = input.arguments[:model_name]
      return "Wrong model name" unless model_allowed?(model_name)

      {
        payload: model_name.constantize.where(input.arguments[:payload])
      }
    end

    private

    def model_allowed?(model_name)
      ALLOWED_MODELS.include?(model_name)
    end
  end
end
