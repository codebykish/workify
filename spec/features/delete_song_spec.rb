require 'rails_helper'

describe "Deleting a song" do

let(:artist) { create :artist }

feature 'Manage songs', js: true do
  scenario 'delete a song' do

    visit artist_path(artist)

    click_button("Delete All Songs")

    expect(page).not_to have_selector("li")


    fill_in 'Name', with: 'Spiderman'

    click_button("Add Song")

    expect(page).to have_content('Spiderman')


    click_button("Delete Song")

    expect(page).not_to have_content('Spiderman')
  end
 end
end
