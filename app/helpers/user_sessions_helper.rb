module UserSessionsHelper
  def current_user?(user)
    user == current_user
  end
  def right_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
  end
end