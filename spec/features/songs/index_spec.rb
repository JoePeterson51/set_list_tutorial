require 'rails_helper'

# As a user,
# when I visit '/songs'
# I see each song's title and play count

RSpec.describe 'songs index page', type: :feature do
  it 'can see all songs title and play count' do
    song1 = Song.create!(title:       "I Really Like You",
                         length:      208,
                         play_count:  243810867)
    song2 = Song.create!(title:       "Call Me Maybe",
                         length:      199,
                         play_count:  1214722172)

    visit '/songs'

    expect(page).to have_content(song1.title)
    expect(page).to have_content(song2.title)

    expect(page).to have_content(song1.play_count)
    expect(page).to have_content(song2.play_count)
  end
end