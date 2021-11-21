require "rails_helper"

describe Mutations::CreateWorker do
  let(:user) { create(:user) }
  let(:public_catering) { create(:public_catering) }
  let(:query) do
    <<-GRAPHQL
      mutation {
        createWorker (
          input: {
            userId: #{user.id}
            publicCateringId: #{public_catering.id}
            role: "waiter"
            rating: 100.0
            salary: 100.2
            beginningWork: "2016-01-01T14:10:20+01:00"
            endWork: "2016-01-01T22:10:20+01:00"
          }
        ) {
          userId
          publicCateringId
          role
          rating
          salary
          beginningWork
          endWork
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_worker.json" }
    end
  end
end
