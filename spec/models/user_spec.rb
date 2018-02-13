require "rails_helper"

describe User, type: :model do
  describe "validations" do
    it "presences of a username" do
      user = User.new(password: "Password")

      expect(user).to_not be_valid
    end

    it "uniqueness of username" do
      og = User.create(username: "user", password: "Password")
      copy = User.new(username: "user", password: "Password")

      expect(copy).to_not be_valid
    end

    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
  end

  describe "roles" do
    it "can be created as an admin" do
      admin = User.create(username: "penelope",
                          password: "boom",
                          role: 1)

      expect(admin.role).to eq("admin")
      expect(admin.admin?).to be_truthy
    end

    it "can be created as a default user" do
      user = User.create(username: "sammy",
                         password: "pass")
                         
      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end
