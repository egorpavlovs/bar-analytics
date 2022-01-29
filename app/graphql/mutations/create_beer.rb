module Mutations
  class CreateBeer < BaseMutation
    argument :input, Types::CreateBeerInput, required: true

    type Types::BeerType

    def resolve(input:)
      create_beer = Beer.new(input.to_h)

      create_beer || execution_error(error_data: create_beer.errors)
    end
  end
end
