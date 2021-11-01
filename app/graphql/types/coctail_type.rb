module Types
  class CoctailType < Types::BaseObject
    field :name, String, null: false
    field :alcogolic_composition, String, null: true
    field :type, String, null: true # TODO: use validation
  end
end
