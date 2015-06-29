class Interaction < Hashie::Mash
  include Hashie::Extensions::MethodAccessWithOverride

  def self.find(drug)
    new(FdaApi.find_interactions_by_drug(drug))
    #search_results = SearchResults.new(FdaApi.find_drug_by_id(drug_id))
    #search_results.results.first if search_results.results
  end
end

