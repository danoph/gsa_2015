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
    let(:total_results) { 29 }

    it 'shows search results' do
      visit searches_path(search_params)

      expect(page).to have_content("Search: #{query}")
      expect(page).to have_content("(#{total_results} results)")
      expect(page).to have_content('DEXTROAMPHETAMINE SULFATE')
    end

    describe 'clicking a result' do
      it 'goes to medication detail page' do
        visit searches_path(search_params)

        click_link 'Procentra'

        expect(page).to have_content('Procentra')
        expect(page).to have_content('Independence Pharmaceuticals, LLC')
        expect(page).to have_content('Central Nervous System Stimulant [EPC]')
      end
    end
  end

  describe 'when no results' do
    let(:raw_response) { File.read(File.expand_path('../../fixtures/error_response.json', __FILE__)) }
    let(:total_results) { 0 }

    it 'shows error' do
      visit searches_path(search_params)

      expect(page).to have_content("Search: #{query}")
      expect(page).to have_content("(#{total_results} results)")
      expect(page).to have_content('No matches found!')
    end
  end
end
