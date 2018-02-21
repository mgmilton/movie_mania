require "rails_helper"

describe Cart, type: :model do
  describe "#total_count" do
    it "can calculate the total number of items cart holds" do
      cart = Cart.new({"1" => 2, "2" => 3})
      expect(cart.total_count).to eq(5)
    end
  end
end
