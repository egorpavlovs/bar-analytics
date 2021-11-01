module Mutations
  class CreateFood < BaseMutation
    argument :input, Types::CreateFoodInput, required: true

    type Types::FoodType

    def resolve(input:)
      create_food = Food.new(input.to_h)

      if create_food.save
        create_food
      else
        execution_error(error_data: create_food.errors)
      end
    end
  end
end
