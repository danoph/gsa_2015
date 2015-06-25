class Search
  include ActiveModel::Model

  attr_accessor :generic_name

  def self.search_generic_name(query, page)
    SearchResults.new(FdaApi.get_label(query, page), query)
  end
end
