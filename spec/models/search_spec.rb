require 'rails_helper'

describe Search do
  describe '.search_generic_name' do
    let(:query) { double 'query' }
    let(:results) { double 'results' }
    let(:search_results) { double 'search_results' }

    subject { described_class }

    before do
      allow(FdaApi).to receive(:get_label).with(query) { results }
      allow(SearchResults).to receive(:new).with(query, results) { search_results }
    end

    it 'gets results from FDA api' do
      expect(subject.search_generic_name(query)).to eq(search_results)
    end
  end
end
