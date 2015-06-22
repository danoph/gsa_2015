class Search
  include ActiveModel::Model

  attr_accessor :generic_name

  def self.search_generic_name(query)
    FdaApi.get_label(query)
  end
end
