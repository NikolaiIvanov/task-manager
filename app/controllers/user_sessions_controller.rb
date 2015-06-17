class UserSessionsController < ApplicationController
  skip_before_filter :require_login
  layout "empty_application"

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:create_session][:email], params[:create_session][:password])
      remember_me!
      redirect_back_or_to(:users, notice: 'You successfully loged in')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    forget_me!
    logout
    redirect_to login_url
  end

end