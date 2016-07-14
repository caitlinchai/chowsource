class RecipesController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update, :destroy, :password]
  before_action :correct_user, only: [:new, :create, :edit, :destroy]

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @categories = Category.all
    @recipe = current_user.recipes.new
    @ingredient = @recipe.ingredients.new
  end

  def create
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.build(recipe_params)
    @categories = Category.all

    if @recipe.save
      redirect_to new_recipe_ingredient_path
    else
      @errors = @recipe.errors.full_messages
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

  def logged_in_user
    unless logged_in?
      flash[:notice]="Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(session[:user_id] )
    redirect_to(root_url) unless current_user?(@user)
  end
end
