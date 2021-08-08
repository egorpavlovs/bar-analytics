# frozen_string_literal: true

require "rails_helper"

describe WineBar do
  let(:wine_bar) { build(:wine_bar) }

  describe "validations" do
    it "has a valid factory" do
      expect(wine_bar).to be_valid
    end
  end
end
