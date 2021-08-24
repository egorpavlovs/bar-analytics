module Types
  class CreateGuestInput < Types::BaseInputObject
    argument :user_id, ID, required: true
  end
end
