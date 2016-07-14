class RecipeIngredientsController < ApplicationController

  def new
    @recipe_ingredient = RecipeIngredient.new
    @ingredient = Ingredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create

    @ingredient = Ingredient.find_or_create_by(name: ingredient_params[:ingredient])
    @measurement = Measurement.find_or_create_by(name: ingredient_params[:measurement].to_f)
    @recipe_ingredient = RecipeIngredient.new(recipe_id: ingredient_params[:recipe_id], ingredient_id: @ingredient.id, measurement_id: @measurement.id, quantity: ingredient_params[:quantity])
    # binding.pry
    @recipe_ingredient.save
    # binding.pry
    render 'new'
  end

  def show
  end

  private

  def ingredient_params
    params.permit(:ingredient, :measurement, :quantity, :recipe_id)
  end
end
