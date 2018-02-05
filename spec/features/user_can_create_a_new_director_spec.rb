require "rails_helper"

describe "as a user" do
  describe "when I visit new" do
    it "they can create a director" do
      visit "/directors/new"

      fill_in "diector[name]", with: "Copola"
      click_on "Submit"
      
      expect(page).to have_content("Director: Copola")
    end
  end
end
