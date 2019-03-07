require "spec_helper"
require "./samples/bonus_drink"

RSpec.describe BonusDrink do

  describe "Bonus Drink" do
    it "is equal to 4" do
      expect(BonusDrink.total_drink(3)).to eq 4
    end

    it "is equal to 16" do
      expect(BonusDrink.total_drink(11)).to eq 16
    end

    it "is equal to 149" do
      expect(BonusDrink.total_drink(100)).to eq 149
    end
  end
end
