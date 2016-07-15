class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy, :password]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes || []
  end

  def new
    if logged_in?
      flash[:notice]="You must logout to register a new user."
      redirect_to current_user
    else
      @user = User.new
     end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Success! Welcome to ChowSource."
      login(@user)
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def password
    render 'password'
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice]="Updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def update_password
    @user = current_user

    if @user.authenticate(params[:user][:current_password]) && @user.update_attributes(user_params)
      flash[:notice]="Password changed."
      redirect_to @user
    else
      @errors = @user.errors.full_messages.join if @user.errors.count > 0
      @errors = "Wrong password. Please enter your current password." unless @errors
      render 'password'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    session.clear
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :about, :location)
  end

  def logged_in_user
    unless logged_in?
      flash[:notice]="Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
