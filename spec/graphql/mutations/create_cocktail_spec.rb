require "rails_helper"

describe Mutations::CreateCocktail do
  let(:query) do
    <<-GRAPHQL
      mutation {
        createCocktail (
          input: {
            name: "CoctailName"
            alcogolicComposition: "first element, secon element"
          }
        ) {
          name
          alcogolicComposition
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_cocktail.json" }
    end
  end
end
