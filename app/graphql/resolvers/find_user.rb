module Resolvers
  class FindUser < Resolvers::Base
    argument :input, Types::UserInput, required: true

    type Types::UserType, null: true

    def resolve(input:)
      User.find_by(input.to_h)
    end
  end
end
