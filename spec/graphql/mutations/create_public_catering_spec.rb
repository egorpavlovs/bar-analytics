require "rails_helper"

describe Mutations::CreatePublicCatering do
  let(:query) do
    <<-GRAPHQL
      mutation {
        createPublicCatering (
          input: {
            name: "PublicCateringName"
            rating: 89.1
            address: "UK, London"
            startWorking: "2016-01-01T14:10:20+01:00"
            endWorking: "2016-01-01T22:10:20+01:00"
          }
        ) {
          name
          rating
          address
          startWorking
          endWorking
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_public_catering.json" }
    end
  end
end
