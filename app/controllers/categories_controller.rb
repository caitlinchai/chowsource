class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(id_params)
    @recipes = @category.recipes
     # Recipe.where( category_id: id_params )

  end

  private

  def id_params
    params.require(:id)
  end
end
