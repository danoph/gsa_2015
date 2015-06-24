require 'rails_helper'

describe SearchResults do
  let(:query) { double 'query' }
  let(:raw_response) { { results: results, meta: meta } }
  let(:meta) { double 'meta', results: meta_results }
  let(:meta_results) { double 'meta results', skip: 0, limit: 1, total: total }
  let(:total) { double 'total' }
  let(:results) { double 'search results from api' }
  let(:fda_response) { double 'fda response', error?: error?, error: fda_error, meta: meta, meta?: meta?, results: results }
  let(:fda_error) { nil }
  let(:error?) { false }
  let(:meta?) { true }

  before do
    allow(Hashie::Mash).to receive(:new).with(raw_response) { fda_response }
  end

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

  describe '#total_results' do
    it 'gets total results' do
      expect(subject.total_results).to eq(total)
    end
  end

  describe '#error_message' do
    it 'is blank' do
      expect(subject.error_message).to be_blank
    end
  end

  describe '#error' do
    let(:meta?) { false }
    let(:error?) { true }
    let(:fda_error) { double 'fda error', message: error_message }
    let(:error_message) { double 'error message' }
    let(:raw_response) { { error: fda_error } }

    it 'sets total_results to 0' do
      expect(subject.total_results).to eq(0)
    end

    it 'has an error' do
      expect(subject.error?).to eq(true)
    end

    it 'error message should be set' do
      expect(subject.error_message).to eq(error_message)
    end
  end
end
