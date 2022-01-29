require "rails_helper"

describe Mutations::CreateWineBar do
  let(:public_catering) { create(:public_catering) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createWineBar (
          input: {
            publicCateringId: "#{public_catering.id}",
            hasSommelier: true
          }
        ) {
          publicCateringId
          hasSommelier
        }
      }
    GRAPHQL
  end

  xcontext "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_wine_bar.json" }
    end
  end
end
