class SearchResults
  attr_reader :query, :results

  def initialize(query, raw_response)
    @query = query
    @raw_response = raw_response
    @results = raw_response.fetch(:results, [])
  end

  def error?
    @raw_response.has_key?(:error)
  end

  def error_message
    @raw_response[:error].fetch(:message, "") if error?
  end

  def meta
    @raw_response.fetch(:meta, {})
  end

  def meta_results
    meta.fetch(:results, {})
  end

  def total
    meta_results.fetch(:total, 0)
  end
end
