class RecipesController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update, :destroy, :password]
  before_action :correct_user, only: [ :edit, :destroy]

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
    if current_user
      if current_user.ratings.where(recipe_id: @recipe.id).present?
        @current_rating = current_user.ratings.where(recipe_id: @recipe.id).first.stars.to_i
      end
    end
  end

  def index
    @recipes = Recipe.paginate(:per_page => 5, :page => params[:page]).order('created_at DESC')
  end

  def new
    @categories = Category.all
    @recipe = current_user.recipes.new
    @ingredient = @recipe.ingredients.new
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    @categories = Category.all

    if @recipe.save
      redirect_to new_recipe_recipe_ingredient_path(@recipe)
    else
      @errors = @recipe.errors.full_messages
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      flash[:notice]="Updated."
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to @user
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :difficulty_level, :prep_time_hours, :prep_time_min, :directions, :description, :creator, :servings, :image)
  end

  def logged_in_user
    unless logged_in?
      flash[:notice]="Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @recipe = Recipe.find(params[:id])
    @user = User.find(session[:user_id] )
    redirect_to(root_url) unless current_user== @recipe.user
  end

  def query_params
    params.permit(:query)
  end
end
