require 'rails_helper'

describe SearchesController do
  describe '#show' do
    let(:search_query) { 'some query' }
    let(:search_params) { { search: { generic_name: search_query } } }
    let(:search) { double 'search' }

    it 'gets search results' do
      expect(Search).to receive(:search_generic_name).with(search_query) { search }
      get :show, search_params
      expect(assigns(:search)).to eq(search)
    end
  end
end
