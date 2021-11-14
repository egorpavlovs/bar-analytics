# frozen_string_literal: true

require "rails_helper"

describe CocktailBar do
  let(:cocktail_bar) { build(:cocktail_bar) }

  describe "validations" do
    it "has a valid factory" do
      expect(cocktail_bar).to be_valid
    end
  end
end
