require "rails_helper"

describe "As a visitor " do
  describe "when I visit the root" do
  it "he or she can create a user account" do

    visit '/'

    click_on "Sign Up to Be a User"

    expect(current_path).to eq(new_user_path)

    fill_in "user[username]", with: "funbucket13"
    fill_in "user[password]", with: "test"

    click_on "Create User"

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome, funbucket13!")
  end
end
end
