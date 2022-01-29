module Mutations
  class CreateCocktail < BaseMutation
    argument :input, Types::CreateCocktailInput, required: true

    type Types::CocktailType

    def resolve(input:)
      create_cocktail = Cocktail.new(input.to_h)

      if create_cocktail.save
        create_cocktail
      else
        execution_error(error_data: create_cocktail.errors)
      end
    end
  end
end
