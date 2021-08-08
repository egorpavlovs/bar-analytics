# frozen_string_literal: true

require "rails_helper"

describe Cafe do
  let(:cafe) { build(:cafe) }

  describe "validations" do
    it "has a valid factory" do
      expect(cafe).to be_valid
    end
  end
end
