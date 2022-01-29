require "rails_helper"

describe Mutations::CreateGuest do
  let(:user) { create(:user) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createGuest (
          input: {
            userId: #{user.id}
          }
        ) {
          userId
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_guest.json" }
    end
  end
end
