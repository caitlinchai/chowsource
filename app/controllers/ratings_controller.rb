class RatingsController < ApplicationController

  def create
    if logged_in?
      @recipe = Recipe.find(params[:recipe_id])
      @rating = Rating.create(recipe_id: @recipe.id, user_id: session[:user_id], stars: params[:value].to_i + 1)
      @vote_saved = true
      redirect_to recipe_path(@recipe)
    else
      redirect_to '/register'
    end
  end

private

def name_params
  params.require(:rating).permit(:value)
end

end
