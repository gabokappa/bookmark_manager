require './spec/spec_helper'
require 'pg'

feature 'add bookmarks' do
  scenario 'user wants to add a url to bookmark list' do

    visit '/bookmarks/new'
    fill_in :new_url, with: 'https://www.bbc.co.uk'
    fill_in :title, with: 'BBC'
    click_button 'Submit'
    expect(page).to have_link('BBC', href: 'https://www.bbc.co.uk')
  end
end
