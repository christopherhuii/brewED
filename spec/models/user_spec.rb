require 'rails_helper'

describe User do
  it "should create an account successfully" do
    user = User.create(first_name: "Chris", last_name: "Hui", email: "ckh@gmail.com", password: "password", password_confirmation: "password")

    expect(user.first_name).to eq("Chris")
  end

  it "should not be able to create an account with missing params" do
    user = User.create(first_name: "Chris")

    expect(user).not_to be_valid
  end
  it "cannot create user with duplicate email" do
    user1 = User.create(first_name: "Chris", last_name: "Hui", email: "ckh@gmail.com", password: "password", password_confirmation: "password")

    user2 = User.create(first_name: "John", last_name: "Stamos", email: "ckh@gmail.com", password: "superduper", password_confirmation: "superduper")

    expect(user2).not_to be_valid
  end
end