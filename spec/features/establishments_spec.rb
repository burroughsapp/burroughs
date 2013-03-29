require 'spec_helper'

feature 'Establishments' do
  scenario 'Add an establishment' do
    FactoryGirl.create(:location)

    visit root_path
    click_link 'Establishments'
    click_link 'New Establishment'

    fill_in 'Name', with: "Teller's"
    click_button 'Create Establishment'

    expect(page).to have_content 'Successfully created establishment.'
    expect(page).to have_content "Teller's"
    expect(current_path).to eq establishments_path
  end
end