require 'spec_helper'
require_relative '../../app/models/fda_api'

describe FdaApi do
  let(:query) { 'dextroamphetamine' }
  let(:drug_response) { { results: 'drug response' } }
  let(:skip) { 0 }
  let(:search_url) { "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&search=generic_name:#{query}+OR+brand_name:#{query}&limit=20&skip=#{skip}" }

  describe '.get_label' do
    subject { described_class }

    context 'first page' do
      before do
        stub_request(:get, search_url).to_return(body: drug_response.to_json)
      end

      it 'gets label stuff' do
        expect(subject.get_label(query)).to eq(drug_response)
      end
    end

    context 'second page' do
      let(:skip) { 20 }

      before do
        stub_request(:get, search_url).to_return(body: drug_response.to_json)
      end

      it 'adds skip to request' do
        expect(subject.get_label(query, 2)).to eq(drug_response)
      end
    end

    context 'multiple search terms' do
      let(:search_url) { "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&#{search_terms}&limit=20&skip=#{skip}" }
      let(:search_terms) { "search=generic_name:hello+AND+generic_name:world+OR+brand_name:hello+AND+brand_name:world" }

      before do
        stub_request(:get, "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&#{search_terms}&limit=20&skip=0").
          to_return(body: drug_response.to_json)
      end

      let(:query) { 'hello world' }

      it 'correctly parameterizes query params' do
        expect(subject.get_label(query)).to eq(drug_response)
      end
    end
  end
end
