# frozen_string_literal: true

require "rails_helper"

describe Comment do
  let(:comment) { build(:comment) }

  describe "validations" do
    it "has a valid factory" do
      expect(comment).to be_valid
    end
  end
end
