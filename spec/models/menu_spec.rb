# frozen_string_literal: true

require "rails_helper"

describe Menu do
  let(:menu) { build(:menu) }

  describe "validations" do
    it "has a valid factory" do
      expect(menu).to be_valid
    end
  end
end
