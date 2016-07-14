class RatingsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    if logged_in?
      # @recipe = Recipe.find(params[:recipe_id])
      @rating = Rating.create(recipe_id: @recipe.id, user_id: session[:user_id], stars: params[:value].to_i + 1)
    else
      flash[:notice]="You must be logged in to vote."
    end
    redirect_to recipe_path(@recipe)

  end

private

def name_params
  params.require(:rating).permit(:value)
end

end
