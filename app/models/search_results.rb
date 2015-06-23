class SearchResults
  attr_reader :query, :results

  def initialize(query, results)
    @query = query
    @results = results
  end
end
