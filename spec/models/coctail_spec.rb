# frozen_string_literal: true

require "rails_helper"

describe Coctail do
  let(:coctail) { build(:coctail) }

  describe "validations" do
    it "has a valid factory" do
      expect(coctail).to be_valid
    end
  end
end
