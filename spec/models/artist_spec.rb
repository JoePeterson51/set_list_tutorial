require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: "Prince")
        @purple = @prince.songs.create!(title: "Purple Rain", length: 233, play_count: 223423)
        @beret = @prince.songs.create!(title: "Rasberry Beret", length: 534, play_count: 74747)
        @other_song = @prince.songs.create!(title: "Another Prince Song", length: 2, play_count: 99)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(256.33)
      end
    end
  end
end