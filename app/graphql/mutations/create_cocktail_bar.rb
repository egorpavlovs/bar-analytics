module Mutations
  class CreateCocktailBar < BaseMutation
    argument :input, Types::CreateCocktailBarInput, required: true

    type Types::CocktailBarType

    def resolve(input:)
      create_cb = CocktailBar.new(input.to_h)

      if create_cb.save
        create_cb
      else
        execution_error(error_data: create_cb.errors)
      end
    end
  end
end
