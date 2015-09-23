module Features
  def create_user
    visit root_path
    click_on "Sign Up", :match => :first
    fill_in "First name", with: "Chris"
    fill_in "Last name", with: "Hui"
    fill_in "Email", with: "ckh@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
  end

  def sign_in
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "ckh@gmail.com"
    fill_in "Password", with: "password"
    click_on "Log in"
  end
end