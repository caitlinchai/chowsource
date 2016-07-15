class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(id_params)
    @recipes = @category.recipes.paginate(:per_page => 5, :page => params[:page]).order('created_at DESC')
  end
  private

  def id_params
    params.require(:id)
  end
end
