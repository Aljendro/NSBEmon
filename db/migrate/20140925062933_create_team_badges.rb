class CreateTeamBadges < ActiveRecord::Migration
  def change
    create_table :team_badges do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
