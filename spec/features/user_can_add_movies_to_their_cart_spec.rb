require "rails_helper"

describe "as a user" do
  describe "when I visit movies index" do
    describe "when I click on Add movie" do

      before(:each) do
        @movie = create(:movie)
      end

      scenario "it adds a movie to the cart" do
        visit director_movies_path(@movie.director)

        click_button "Add Movie"

        expect(current_path).to eq(director_movies_path(@movie.director))
        expect(page).to have_content("You now have 1 #{@movie.title} in your cart.")
      end


    end
  end
end
