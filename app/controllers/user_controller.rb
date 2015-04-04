class UserController < ApplicationController
  before_filter :check_privileges!, only: [:admin_page]

  # GET /users
  def index
    @users = User.order("experience DESC").all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @user_profile = @user.profile
  end

  def admin_page
    @users = User.all
  end

  def add_sub_values

    trainer = nil
    points = 0

    params.each do |key, val| 
      if key == "Trainer"
        trainer = User.find(val)
      end

      if key ==  "Points"
        points = val["0"].to_i unless val["0"].empty?
      end
    end

    if ((points != 0) && ((trainer.experience + points) >= 0))
      trainer.experience += points
      trainer.save
      redirect_to user_admin_page_path, notice: "Successfully updated values"
      return 
    end

    redirect_to user_admin_page_path, alert: "Input empty or too negative!"
  end

 private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:level, :experience)
    end

    def check_privileges!
      redirect_to "/", notice: 'You do not have superUser privileges' unless current_user and current_user.try(:admin?)
    end
end
