# frozen_string_literal: true

require "rails_helper"

describe Worker do
  let(:worker) { build(:worker) }

  describe "validations" do
    it "has a valid factory" do
      expect(worker).to be_valid
    end
  end
end
