require 'spec_helper'
require_relative '../good_vids'

Capybara.app = GoodVids

feature 'User can manage a list of videos' do

  before do
    DB[:good_vids].delete
  end

  scenario 'User is welcomed on homepage' do
    visit '/'
    welcome = 'Welcome to the amazing collection of Good Vids'
    expect(page).to have_content(welcome)
  end

  scenario 'User can add videos and see them listed on homepage' do
    visit '/'
    video_name = "Brian Williams Raps 'Rapper's Delight'"
    video_url = 'http://www.youtube.com/watch?v=-YCeIgt7hMs'
    fill_in 'Video Name', with: video_name
    fill_in 'Video URL', with: video_url
    click_on 'Add'
    expect(page).to have_content(video_name)
    expect(page).to have_content(video_url)
  end

end
