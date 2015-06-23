require 'rails_helper'

describe SearchResults do
  let(:query) { double 'query' }
  let(:results) { double 'search results from api' }

  subject { described_class.new(query, results) }

  describe '#query' do
    it 'returns original query' do
      expect(subject.query).to eq(query)
    end
  end

  describe '#results' do
    it 'returns results' do
      expect(subject.results).to eq(results)
    end
  end
end
