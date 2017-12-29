require 'rails_helper'

RSpec.feature "visitor sees homepage" do
  scenario "visitor sees the homepage with location select" do
    visit root_path

    expect(page).to have_content("Welcome to the app")
    expect(page).to have_select("locations")
    expect(page).to have_link("instructor login")
  end
end
