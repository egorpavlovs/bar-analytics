# frozen_string_literal: true

require "rails_helper"

describe Cocktail do
  let(:cocktail) { build(:cocktail) }

  describe "validations" do
    it "has a valid factory" do
      expect(cocktail).to be_valid
    end
  end
end
