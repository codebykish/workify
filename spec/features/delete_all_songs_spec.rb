require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'delete all songs' do

    visit "http://localhost:3000/artists/3"

    fill_in 'Name', with: 'Spiderman'

    click_button("Add Song")

    expect(page).to have_content('Spiderman')


    fill_in 'Name', with: 'Hulk'

    click_button("Add Song")

    expect(page).to have_content('Hulk')


    click_button("Delete All Songs")

    expect(page).not_to have_selector("li")
  end
end
