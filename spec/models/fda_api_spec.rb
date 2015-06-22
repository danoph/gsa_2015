require 'spec_helper'
require_relative '../../app/models/fda_api'

describe FdaApi do
  let(:query) { 'dextroamphetamine' }
  let(:drug_response) { { results: 'drug response' } }

  describe '.get_label' do
    subject { described_class }

    before do
      stub_request(:get, "https://api.fda.gov/drug/label.json?api_key=#{ENV['FDA_API_KEY']}&search=generic_name:#{query}").
        to_return(body: drug_response.to_json)
    end

    it 'gets label stuff' do
      expect(subject.get_label(query)).to eq(drug_response)
    end
  end
end
