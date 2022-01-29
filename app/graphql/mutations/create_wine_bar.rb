module Mutations
  class CreateWineBar < BaseMutation
    argument :input, Types::CreateWineBarInput, required: true

    type Types::WineBarType

    def resolve(input:)
      create_wb = WineBar.new(input.to_h)

      if create_wb.save
        create_wb
      else
        execution_error(error_data: create_wb.errors)
      end
    end
  end
end
