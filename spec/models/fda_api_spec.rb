require 'spec_helper'
require_relative '../../app/models/fda_api'

describe FdaApi do
  let(:query) { 'dextroamphetamine' }
  let(:drug_response) { { results: 'drug response' } }

  describe '.get_label' do
    subject { described_class }

    context 'first page' do
      before do
        stub_request(:get, "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&search=generic_name:#{query}&limit=20&skip=0").
          to_return(body: drug_response.to_json)
      end

      it 'gets label stuff' do
        expect(subject.get_label(query)).to eq(drug_response)
      end
    end

    context 'second page' do
      before do
        stub_request(:get, "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&search=generic_name:#{query}&limit=20&skip=20").
          to_return(body: drug_response.to_json)
      end

      it 'adds skip to request' do
        expect(subject.get_label(query, 2)).to eq(drug_response)
      end
    end
  end
end
