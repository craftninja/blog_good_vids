require 'spec_helper'
require_relative '../good_vids'

Capybara.app = GoodVids

feature 'User can manage a list of videos' do

  scenario 'User is welcomed on homepage' do
    visit '/'
    welcome = 'Welcome to the amazing collection of Good Vids'
    expect(page).to have_content(welcome)
  end

end
