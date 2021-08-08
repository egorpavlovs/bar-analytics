# frozen_string_literal: true

require "rails_helper"

describe Wine do
  let(:wine) { build(:wine) }

  describe "validations" do
    it "has a valid factory" do
      expect(wine).to be_valid
    end
  end
end
