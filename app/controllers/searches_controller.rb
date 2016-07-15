class SearchesController < ApplicationController

  def query
    search = Search.new(params[:search])
    @recipes = search.recipes
    @query = params[:search]
    render 'show'
  end

end
