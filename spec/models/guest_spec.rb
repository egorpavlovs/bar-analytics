# frozen_string_literal: true

require "rails_helper"

describe Guest do
  let(:guest) { build(:guest) }

  describe "validations" do
    it "has a valid factory" do
      expect(guest).to be_valid
    end
  end
end
