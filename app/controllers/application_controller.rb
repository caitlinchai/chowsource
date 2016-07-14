class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  include SessionsHelper
  def index
    @appetizers = Recipe.joins(:ratings).where(category_id: 1).order("ratings.stars").limit(5)
    @soups_and_salads = Recipe.joins(:ratings).where(category_id: 2).order("ratings.stars").limit(5)
    @main_course = Recipe.joins(:ratings).where(category_id: 3).order("ratings.stars").limit(5)
    @dessert = Recipe.joins(:ratings).where(category_id: 4).order("ratings.stars").limit(5)
  end

end
