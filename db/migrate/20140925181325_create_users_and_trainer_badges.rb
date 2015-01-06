class CreateUsersAndTrainerBadges < ActiveRecord::Migration
  def change
    create_table :users_and_trainer_badges, id: false do |t|
      t.belongs_to :user
      t.belongs_to :trainer_badge
    end
  end
end
