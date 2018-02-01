require "rails_helper"

describe "user sees all movies" do
  describe "they visit movie index" do
    it "sees all the movies" do
      fred = Movie.create!(title: "Drop Dead Fred", description: "An unhappy housewife gets a lift from the return of her imaginary childhood friend")

      empire = Movie.create!(title: "Empire Records", description: "Independent Delaware store that employs a tight-knit group of music-savvy youths.")

      visit "/movies"

      expect(page).to have_content("All Movies")
      expect(page).to have_content(fred.title)
      expect(page).to have_content(fred.description)
      expect(page).to have_content(empire.title)
      expect(page).to have_content(empire.description)
    end
  end
end
