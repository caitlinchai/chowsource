class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(id_params)
    @recipes = @category.recipes
  end

  private

  def id_params
    params.require(:id)
  end
end
