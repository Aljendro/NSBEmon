class DropTrainerBadges < ActiveRecord::Migration
  def change
    drop_table :trainer_badges
  end
end
