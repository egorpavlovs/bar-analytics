module Types
  class CommentType < Types::BaseObject
    field :text, String, null: false
    field :review_id, ID, null: false
    field :guest_id, ID, null: false
    field :worker_id, ID, null: false
  end
end
