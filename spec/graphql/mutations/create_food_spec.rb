require "rails_helper"

describe Mutations::CreateFood do
  let(:query) do
    <<-GRAPHQL
      mutation {
        createFood (
          input: {
            name: "FoodName"
            productComposition: "Milk, Cola, Snacks"
          }
        ) {
          name
          productComposition
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_food.json" }
    end
  end
end
