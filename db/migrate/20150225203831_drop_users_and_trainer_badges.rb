class DropUsersAndTrainerBadges < ActiveRecord::Migration
  def change
    drop_table :users_and_trainer_badges
  end
end
