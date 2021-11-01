module Mutations
  class CreateCocktail < BaseMutation
    argument :input, Types::CreateCoctailInput, required: true

    type Types::CoctailType

    def resolve(input:)
      create_cocktail = Coctail.new(input.to_h)

      if create_cocktail.save
        create_cocktail
      else
        execution_error(error_data: create_cocktail.errors)
      end
    end
  end
end
