class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	  if @user.save
  	  	session[:id] = @user.id

  def show
  end

  def edit
  end
end
