class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :current_user, :categories

  include SessionsHelper
  
  def index
    @appetizers = Category.find(1).top_five.reverse
    @soups_and_salads = Category.find(2).top_five.reverse
    @main_course = Category.find(3).top_five.reverse
    @dessert = Category.find(4).top_five.reverse
  end

  def current_user
    @current_user=User.find(session[:user_id]) if session[:user_id]
  end

  def categories
    @categories = Category.all
  end

end
