module Mutations
  class CreateGuest < BaseMutation
    argument :input, Types::CreateGuestInput, required: true

    type Types::GuestType

    def resolve(input:)
      create_guest = Guest.new(input.to_h)

      if create_guest.save
        create_guest
      else
        execution_error(error_data: create_guest.errors)
      end
    end
  end
end
