require 'rails_helper'

describe Movie do
  describe 'searching Tmdb by keyword' do
    it 'calls Faraday gem with CS169 domain' do
      expect(Faraday).to receive(:get).with('https://cs169.org')
      Movie.find_in_tmdb('https://cs169.org')
    end
    it 'calls Tmdb with valid API key' do
      expect {
        Movie.find_in_tmdb('https://api.themoviedb.org/3/search/movie?api_key=fake&query=hacker&language=en')
    
    }.not_to raise_error
     end
  end
end