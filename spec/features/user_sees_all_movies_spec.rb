require "rails_helper"

describe "user sees all movies" do
  describe "they visit movie index" do
    it "sees all the movies" do
      director_1 = Director.create!(id: 1, name: "Charlie")
      fred = Movie.create!(title: "Drop Dead Fred", description: "An unhappy housewife gets a lift from the return of her imaginary childhood friend", director_id: 1)


      empire = Movie.create!(title: "Empire Records", description: "Independent Delaware store that employs a tight-knit group of music-savvy youths.", director_id: 1)

      visit movies_path

      expect(page).to have_content("All Movies")
      expect(page).to have_content(fred.title)
      expect(page).to have_content(fred.description)
      expect(page).to have_content(empire.title)
      expect(page).to have_content(empire.description)
    end
  end
end

describe "As a user" do
  describe "When I visit a new route" do
    it "I can see a form with fields for title and description" do

      visit new_movie_path  

      expect(page).to have_content("Enter a new movie")
      click_button('Submit')
    end
  end
end


describe "As a user" do
  describe "When I visit a show route" do
    it "I see the title of a movie"  do
      director_1 = Director.create!(id: 1, name: "Charlie")
      fred = Movie.create!(title: "Drop Dead Fred", description: "An unhappy housewife gets a lift from the return of her imaginary childhood friend", director_id: 1)



      empire = Movie.create!(title: "Empire Records", description: "Independent Delaware store that employs a tight-knit group of music-savvy youths.", director_id: 1)

      visit movie_path(empire)


      expect(page).to have_content("Empire Records")
    end

    it "I can see the description of the movie" do
      director_1 = Director.create!(id: 1, name: "Charlie")
      empire = Movie.create!(title: "Empire Records", description: "Independent Delaware store that employs a tight-knit group of music-savvy youths.", director_id: 1)



      visit movie_path(empire)

      expect(page).to have_content("Delaware store")
    end
  end
end
