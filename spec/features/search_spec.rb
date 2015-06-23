require 'rails_helper'

describe 'Searching for a drug' do
  let(:raw_response) { File.read(File.expand_path('../../fixtures/adderall.json', __FILE__)) }
  let(:query) { 'amphetamine' }
  let(:search_params) { { search: { generic_name: query } } }

  before do
    stub_request(:get, /api.fda.gov\/drug\/label.json/).
      with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Faraday v0.9.1'}).
      to_return(body: raw_response)
  end

  describe 'searching api' do

    it 'shows search results' do
      visit searches_path(search_params)

      expect(page).to have_content("Search: #{query}")
      expect(page).to have_content('Attention Deficit')
    end
  end

  describe 'when no results' do
    let(:raw_response) { File.read(File.expand_path('../../fixtures/error_response.json', __FILE__)) }

    it 'shows error' do
      visit searches_path(search_params)

      expect(page).to have_content("Search: #{query}")
      expect(page).to have_content('No matches found!')
    end
  end
end
