require "rails_helper"

describe Cart, type: :model do
  before(:each) do
    @cart = Cart.new({"1" => 2, "2" => 3})
  end

  describe "#total_count" do
    it "can calculate the total number of items cart holds" do
      expect(@cart.total_count).to eq(5)
    end
  end

  describe "#add_movie" do
    it "adds a movie to its contents" do
      @cart.add_movie(1)
      @cart.add_movie(2)

      expect(@cart.contents).to eq({"1" => 3, "2" => 4})
    end

    it "handels default nil" do
      cart = Cart.new(nil)
      expect(cart.contents).to eq({})

      cart.add_movie("1")
      expect(cart.contents).to eq("1" => 1)
    end
  end

  describe "#count_of" do
    it "returns a count of a particular movie" do
      expect(@cart.count_of(1)).to eq(2)
      expect(@cart.count_of(2)).to eq(3)
    end
  end
end
