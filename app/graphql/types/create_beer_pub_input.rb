module Types
  class CreateBeerPubInput < Types::BaseInputObject
    argument :public_catering_id, ID, required: true
    argument :has_kicker, Boolean, required: false
  end
end
