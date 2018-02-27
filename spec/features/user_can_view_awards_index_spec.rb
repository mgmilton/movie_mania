require "rails_helper"

describe "As an unregistered user" do
  describe "When I visit the awards index" do
    it "display all the awards and their info" do
        award1 = Awards.create(title: "Best Picture", year: 2000)
        award2 = Awards.create(title: "Best Sound", year: 2000)
        award3 = Awards.create(title: "Best Action Film", year: 2000)

        visit "/awards"

        expect(page).to have_content(award1.title)
        expect(page).to have_content(award1.year)
        expect(page).to have_content(award2.title)
        expect(page).to have_content(award2.year)
        expect(page).to have_content(award3.title)
        expect(page).to have_content(award3.year)
    end
  end
end
