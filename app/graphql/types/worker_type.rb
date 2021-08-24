module Types
  class WorkerType < Types::BaseObject
    field :user_id, ID, null: false
    field :role, String, null: false
    field :rating, Float, null: false
    field :salary, Float, null: true
    # field :beginning_work, Date, null: false
    # field :end_work, Date, null: true
  end
end
