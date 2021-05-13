require 'rails_helper'

RSpec.describe Song, tupe: :model do
  it {should belong_to :artist}
end