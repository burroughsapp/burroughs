require 'spec_helper'

feature "Locations" do
  scenario "adding a location" do
    visit root_path
    click_link 'Locations'
    click_link 'New Location'

    fill_in 'Address', with: '715 Massachussets, Lawrence KS'
    click_button 'Create Location'

    expect(page).to have_content 'Successfully created location.'
    expect(page).to have_content '715 Massachussets, Lawrence KS'
  end
end
