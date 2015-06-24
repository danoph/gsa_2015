class Search
  include ActiveModel::Model

  attr_accessor :generic_name

  def self.search_generic_name(query)
    SearchResults.new(FdaApi.get_label(query), query)
  end
end
