module Mutations
  class CreateBeerPub < BaseMutation
    argument :input, Types::CreateBeerPubInput, required: true

    type Types::BeerPubType

    def resolve(input:)
      create_bp = BeerPub.new(input.to_h)

      if create_bp.save
        create_bp
      else
        execution_error(error_data: create_bp.errors)
      end
    end
  end
end
