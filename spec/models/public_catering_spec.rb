# frozen_string_literal: true

require "rails_helper"

describe PublicCatering do
  let(:public_catering) { build(:public_catering) }

  describe "validations" do
    it "has a valid factory" do
      expect(public_catering).to be_valid
    end
  end
end
