require 'rails_helper'

describe "Deleting all songs" do

let(:artist) { create :artist }

feature 'Manage songs', js: true do
  scenario 'delete all songs' do

    visit artist_path(artist)
    #
    # fill_in 'Name', with: 'Spiderman'
    #
    # click_button("Add Song")
    #
    # expect(page).to have_content('Spiderman')


    fill_in 'Name', with: 'Hulk'

    click_button("Add Song")

    expect(page).to have_content('Hulk')


    click_button("Delete All Songs")

    expect(page).not_to have_selector("li")
   end
 end
end
