require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root" do
    it "he or she can login" do
      user = User.create(username: "funbucket13", password: "test")

      visit '/'

      click_on "I already have an account"

      expect(current_path).to eq(login_path)

      fill_in "username", with: user.username
      fill_in "password", with: user.password

      click_on "Log In"

      click_on "Log Out"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Sign Up")
      expect(page).to have_content("I already have an account")
    end
  end
end
