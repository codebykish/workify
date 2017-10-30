require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'add a new song' do

    visit "http://localhost:3000/artists/1"

    # time for chit chat with teacher
    sleep(2)

    click_button("Delete All Songs")

    expect(page).not_to have_selector("li")


    fill_in 'Name', with: 'Spiderman'

    click_button("Add Song")

    expect(page).to have_content('Spiderman')
  end
end
