class HomeController < ApplicationController
#  before_action :require_user

  def index
    if user_signed_in?
      @user = current_user.id
    else
      redirect_to "/login"
    end
  end

  def show
    @user = User.new
  end

end
