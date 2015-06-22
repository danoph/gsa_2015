require 'spec_helper'
require_relative '../../app/models/fda_api'
require_relative '../../app/models/search'

describe Search do
  describe '.search_generic_name' do
    let(:query) { double 'query' }
    let(:results) { double 'results' }

    subject { described_class }

    before do
      allow(FdaApi).to receive(:get_label).with(query) { results }
    end

    it 'gets results from FDA api' do
      expect(subject.search_generic_name(query)).to eq(results)
    end
  end
end
