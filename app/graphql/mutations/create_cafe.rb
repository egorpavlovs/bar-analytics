module Mutations
  class CreateCafe < BaseMutation
    argument :input, Types::CreateCafeInput, required: true

    type Types::CafeType

    def resolve(input:)
      create_cafe = Cafe.new(input.to_h)

      if create_cafe.save
        create_cafe
      else
        execution_error(error_data: create_cafe.errors)
      end
    end
  end
end
