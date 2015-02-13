class UserController < ApplicationController

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
end
