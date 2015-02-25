class DropTeamBadges < ActiveRecord::Migration
  def change
    drop_table :team_badges
  end
end
