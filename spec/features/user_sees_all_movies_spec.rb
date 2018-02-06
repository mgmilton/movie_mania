require "rails_helper"

describe "user sees all movies" do
  before(:each) do
    @director_1 = create(:director)
    @movies = create_list(:movie, 2, director: @director_1)
  end

  describe "they visit movie index" do
    it "sees all the movies" do
      visit director_movies_path(@director_1)

      expect(page).to have_content("All Movies")
      expect(page).to have_content(@movies[0].title)
      expect(page).to have_content(@movies[0].description)
      expect(page).to have_content(@movies[1].title)
      expect(page).to have_content(@movies[1].description)
    end
  end
end

describe "As a user" do
  before(:each) do
    @director_1 = create(:director)
    @movies = create_list(:movie, 2, director: @director_1)
  end

  describe "When I visit a new route" do
    it "I can see a form with fields for title and description" do
      visit new_director_movie_path(@director_1)

      expect(page).to have_content("Create a New Movie")
    end
  end
end


describe "As a user" do
  before(:each) do
    @director_1 = create(:director)
    @movies = create_list(:movie, 2, director: @director_1)
  end

  describe "When I visit a show route" do
    it "I see the title of a movie"  do
      visit movie_path(@movies[0])
      expect(page).to have_content(@movies[0].title)
    end

    it "I can see the description of the movie" do
      visit movie_path(@movies[0])

      expect(page).to have_content(@movies[0].description)
    end
  end
end
