# frozen_string_literal: true

require "rails_helper"

describe CoctailBar do
  let(:coctail_bar) { build(:coctail_bar) }

  describe "validations" do
    it "has a valid factory" do
      expect(coctail_bar).to be_valid
    end
  end
end
