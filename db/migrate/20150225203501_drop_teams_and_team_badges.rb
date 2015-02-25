class DropTeamsAndTeamBadges < ActiveRecord::Migration
  def change
    drop_table :teams_and_team_badges
  end
end
