require "rails_helper"

describe Mutations::CreateBeer do
  let(:public_catering) { create(:public_catering) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createBeerPub (
          input: {
            publicCateringId: "#{public_catering.id}",
            hasKicker: true
          }
        ) {
          publicCateringId
          hasKicker
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_beer_pub.json" }
    end
  end
end
