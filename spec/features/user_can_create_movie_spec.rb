require "rails_helper"

describe "User creates a new movie" do
  it "fills in revelant information" do
    director = create(:director)

    visit new_director_movie_path(director)

    fill_in "movie[title]", with: "Finding Nemo"
    fill_in "movie[description]", with: "A sad fish story"
    click_on "Create Movie"

    expect(page).to have_content("Finding Nemo")
    expect(page).to have_content("A sad fish story")
    expect(page).to have_content("Name 1")
  end
end
