require "rails_helper"
describe Awards, type: :model do
  describe "relationships" do
    it {is_expected.to have_many(:movies).through(:awards_movies)}
  end
end
