class CreateTeamsAndTeamBadges < ActiveRecord::Migration
  def change
    create_table :teams_and_team_badges, id: false do |t|
      t.belongs_to :team
      t.belongs_to :team_badge
    end
  end
end
