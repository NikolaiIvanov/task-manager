class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :right_user, only: [:edit, :update]
  skip_before_filter :require_login, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    render layout: "empty_application"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(user_params[:email], user_params[:password])
      flash[:success] = "Welcome to the Task Manager."
      redirect_to @user
    else
      render 'new', layout: "empty_application"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "User successfully updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  private
    def edit_user_params
      params.require(:user).permit(:email, :name)
    end
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
    def set_user
      @user = User.find(params[:id])
    end
end
