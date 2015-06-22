require 'rails_helper'

describe SearchesController do
  describe '#show' do
    let(:search_query) { 'some query' }
    let(:search_params) { { search: { generic_name: search_query } } }
    let(:results) { double 'results' }

    it 'gets search results' do
      expect(Search).to receive(:search_generic_name).with(search_query) { results }
      get :show, search_params
      expect(assigns(:results)).to eq(results)
    end
  end
end
