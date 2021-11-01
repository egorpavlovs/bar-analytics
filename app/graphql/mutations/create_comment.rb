module Mutations
  class CreateComment < BaseMutation
    argument :input, Types::CreateCommentInput, required: true

    type Types::CommentType

    def resolve(input:)
      create_comment = Comment.new(input.to_h)

      if create_comment.save
        create_comment
      else
        execution_error(error_data: create_comment.errors)
      end
    end
  end
end
