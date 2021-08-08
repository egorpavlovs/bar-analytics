# frozen_string_literal: true

require "rails_helper"

describe Beer do
  let(:beer) { build(:beer) }

  describe "validations" do
    it "has a valid factory" do
      expect(beer).to be_valid
    end
  end
end
