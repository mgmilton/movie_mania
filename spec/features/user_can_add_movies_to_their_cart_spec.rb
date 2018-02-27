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

      scenario "the message correctly increments for multiple movies" do
        visit director_movies_path(@movie.director)

        click_button "Add Movie"

        expect(current_path).to eq(director_movies_path(@movie.director))
        expect(page).to have_content("You now have 1 #{@movie.title} in your cart.")

        click_button "Add Movie"
        eq(director_movies_path(@movie.director))
        expect(page).to have_content("You now have 2 #{@movie.title}s in your cart.")
      end

      scenario "the total number of movies in the cart  increments" do
        visit director_movies_path(@movie.director)

        expect(page).to have_content("Cart: 0")

        click_button "Add Movie"

        expect(page).to have_content("Cart: 1")
      end
    end
  end
end
