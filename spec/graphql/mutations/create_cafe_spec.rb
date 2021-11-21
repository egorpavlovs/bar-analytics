require "rails_helper"

describe Mutations::CreateBeer do
  let(:public_catering) { create(:public_catering) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createCafe (
          input: {
            publicCateringId: "#{public_catering.id}",
          }
        ) {
          publicCateringId
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_cafe.json" }
    end
  end
end
