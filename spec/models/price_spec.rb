# frozen_string_literal: true

require "rails_helper"

describe Price do
  let(:price) { build(:price) }

  describe "validations" do
    it "has a valid factory" do
      expect(price).to be_valid
    end
  end
end
