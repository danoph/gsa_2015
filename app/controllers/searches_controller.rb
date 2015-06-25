class SearchesController < ApplicationController
  def show
    @search = Search.search_generic_name(params[:search][:generic_name], params[:page])
  end
end
