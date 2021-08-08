# frozen_string_literal: true

require "rails_helper"

describe User do
  let(:user) { build(:user) }

  describe "validations" do
    it "has a valid factory" do
      expect(user).to be_valid
    end
  end
end
