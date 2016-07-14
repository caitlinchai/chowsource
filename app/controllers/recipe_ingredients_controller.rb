class RecipeIngredientsController < ApplicationController

  def new
    @recipe_ingredient = RecipeIngredient.new
    @ingredient = Ingredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find_or_create_by(name: ingredient_params[:ingredient])
    @measurement = Measurement.find(ingredient_params[:measurement_id])
    @recipe_ingredient = RecipeIngredient.new(recipe_id: ingredient_params[:recipe_id], ingredient_id: @ingredient.id, measurement_id: @measurement.id, quantity: ingredient_params[:quantity])
    @recipe_ingredient.save

    render 'new'
  end

  private

  def ingredient_params
    params.permit(:ingredient, :measurement_id, :quantity, :recipe_id)
  end
end
