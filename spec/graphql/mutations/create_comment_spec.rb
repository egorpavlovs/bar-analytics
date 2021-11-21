require "rails_helper"

describe Mutations::CreateComment do
  let(:review) { create(:review) }
  let(:guest) { create(:guest) }
  let(:worker) { create(:worker) }
  let(:public_catering) { create(:public_catering) }

  let(:query) do
    <<-GRAPHQL
      mutation {
        createComment (
          input: {
            text: "CommentText",
            reviewId: "#{review.id}",
            guestId: "#{guest.id}",
            workerId: "#{worker.id}",
          }
        ) {
          text
          reviewId
          guestId
          workerId
        }
      }
    GRAPHQL
  end

  context "with valid data" do
    it_behaves_like "graphql request" do
      let(:fixture_path) { "json/acceptance/graphql/create_comment.json" }
    end
  end
end
