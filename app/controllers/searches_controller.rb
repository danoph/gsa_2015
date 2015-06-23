class SearchesController < ApplicationController
  def show
    @search_query = params[:search][:generic_name]
    @results = Search.search_generic_name(@search_query)
  end
end
