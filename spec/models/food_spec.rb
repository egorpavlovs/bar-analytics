# frozen_string_literal: true

require "rails_helper"

describe Food do
  let(:food) { build(:food) }

  describe "validations" do
    it "has a valid factory" do
      expect(food).to be_valid
    end
  end
end
