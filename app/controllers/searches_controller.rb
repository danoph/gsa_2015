class SearchesController < ApplicationController
  def show
    @results = Search.search_generic_name(params[:search][:generic_name])
  end
end
