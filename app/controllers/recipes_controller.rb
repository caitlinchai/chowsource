class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.new
    @categories = Category.all
  end

  def create
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.build(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      @categories = Category.all
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :difficulty_level, :prep_time_hours, :prep_time_min, :directions, :description, :creator, :servings)
  end
end
