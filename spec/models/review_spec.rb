# frozen_string_literal: true

require "rails_helper"

describe Review do
  let(:review) { build(:review) }

  describe "validations" do
    it "has a valid factory" do
      expect(review).to be_valid
    end
  end
end
