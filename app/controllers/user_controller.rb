class UserController < ApplicationController
  before_filter :check_privileges!, only: [:admin_page]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @user_profile = @user.profile
  end

  def admin_page
    @users = User.all
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:level, :experience)
    end

    def check_privileges!
      redirect_to "/", notice: 'You don not have superUser privileges' unless current_user and current_user.try(:admin?)
    end
end
