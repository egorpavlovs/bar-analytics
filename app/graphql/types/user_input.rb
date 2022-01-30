module Types
  class UserInput < Types::BaseInputObject
    argument :id, ID, required: false
    argument :email, String, required: false
    argument :first_name, String, required: false
    argument :last_name, String, required: false
  end
end
