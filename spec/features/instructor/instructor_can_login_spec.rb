require 'rails_helper'

RSpec.feature "instructor can login" do
  scenario "instructor clicks the login link" do
    visit root_path
    click_link "instructor login"

    expect(current_path).to eq(login_path)
    find_field("session_email")
    find_field("session_password")
  end

  scenario "instructor logs in" do
    instructor = create(:user)

    visit login_path

    fill_in "Email", with: instructor.email
    fill_in "Password", with: instructor.password
    click_button "Login"

    expect(current_path).to eq(user_path(instructor))
  end
end
