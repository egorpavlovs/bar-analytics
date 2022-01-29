require "rails_helper"

describe Mutations::CreateCocktailBar do
  let(:public_catering) { create(:public_catering) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createCocktailBar (
          input: {
            publicCateringId: "#{public_catering.id}",
          }
        ) {
          publicCateringId
        }
      }
    GRAPHQL
  end

  xcontext "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_cocktail_bar.json" }
    end
  end
end
