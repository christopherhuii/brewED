require 'rails_helper'

feature "User sign in" do
  scenario "successfully" do
    create_user
    click_on "Sign Out"
    sign_in

    expect(page).to have_content("Chris Hui")
  end
end