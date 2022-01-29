module Types
  class CreateWineBarInput < Types::BaseInputObject
    argument :public_catering_id, ID, required: true
    argument :has_sommelier, Boolean, required: false
  end
end
