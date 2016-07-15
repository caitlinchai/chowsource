class RecipeIngredientsController < ApplicationController
#   before_action :correct_user, only: [ :new, :edit, :update, :destroy]

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

  def edit
    @recipe_ingredient= RecipeIngredient.find(params[:id])
    @recipe = @recipe_ingredient.recipe
  end

  def update
    @recipe_ingredient= RecipeIngredient.find(params[:id])
    @recipe = @recipe_ingredient.recipe
    @ingredient = Ingredient.find_or_create_by(name: ingredient_params[:ingredient])

    if @recipe_ingredient.update_attributes(ingredient_id: @ingredient.id) && @recipe_ingredient.update_attributes(updated_params)
      redirect_to new_recipe_recipe_ingredient_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    ing = RecipeIngredient.find(params[:id])
    @recipe = ing.recipe
    ing.destroy
    redirect_to new_recipe_recipe_ingredient_path(@recipe)
  end

  private

  def logged_in_user
    unless logged_in?
      flash[:notice]="Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    # recipe_ingredient = RecipeIngredient.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])
    user = User.find(session[:user_id] )
    redirect_to(root_url) unless current_user== recipe.user
  end


  def ingredient_params
    params.permit(:ingredient, :measurement_id, :quantity, :recipe_id)
  end

  def updated_params
    params.permit(:measurement_id, :quantity, :recipe_id)
  end

end
