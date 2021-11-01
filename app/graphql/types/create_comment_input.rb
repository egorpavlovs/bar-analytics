module Types
  class CreateCommentInput < Types::BaseInputObject
    argument :text, String, required: true
    argument :review_id, ID, required: true
    argument :guest_id, ID, required: true
    argument :worker_id, ID, required: true
  end
end
