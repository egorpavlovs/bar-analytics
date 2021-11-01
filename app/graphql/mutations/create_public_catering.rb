module Mutations
  class CreatePublicCatering < BaseMutation
    argument :input, Types::CreatePublicCateringInput, required: true

    type Types::PublicCateringType

    def resolve(input:)
      create_pc = PublicCatering.new(input.to_h)

      if create_pc.save
        create_pc
      else
        execution_error(error_data: create_pc.errors)
      end
    end
  end
end
