require 'rails_helper'

describe "As an admin" do
  describe "When I visit awards index" do
    it "I can create an award" do
      admin = User.create!(username: "user", password: 'test', role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit awards_path

    end
  end
end
