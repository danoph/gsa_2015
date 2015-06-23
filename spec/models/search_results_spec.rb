require 'rails_helper'

describe SearchResults do
  let(:query) { double 'query' }
  let(:raw_response) { { results: results, meta: meta } }
  let(:meta) { { results: { skip: 0, limit: 1, total: total } } }
  let(:total) { double 'total' }
  let(:results) { double 'search results from api' }

  subject { described_class.new(query, raw_response) }

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

  describe '#total' do
    it 'gets total results' do
      expect(subject.total).to eq(total)
    end
  end

  describe '#error' do
    let(:raw_response) { { error: { code: "NOT_FOUND", message: "No matches found!" } } }

    it 'sets total to 0' do
      expect(subject.total).to eq(0)
    end

    it 'has an error' do
      expect(subject.error?).to eq(true)
    end
  end
end
