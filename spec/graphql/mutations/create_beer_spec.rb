require "rails_helper"

describe Mutations::CreateBeer do
  let(:query) do
    <<-GRAPHQL
      mutation {
        createBeer (
          input: {
            name: "BeerName",
            abv: 12.1,
            ibu: 13.3,
            country: "UK"
          }
        ) {
          name
          country
          abv
          ibu
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_beer.json" }
    end
  end
end
