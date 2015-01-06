class TeamController < ApplicationController
  
  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
    @team_trainers = @team.users
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :description)
    end

end
