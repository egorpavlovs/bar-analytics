# frozen_string_literal: true

require "rails_helper"

describe BeerPub do
  let(:beer_pub) { build(:beer_pub) }

  describe "validations" do
    it "has a valid factory" do
      expect(beer_pub).to be_valid
    end
  end
end
