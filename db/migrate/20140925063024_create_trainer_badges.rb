class CreateTrainerBadges < ActiveRecord::Migration
  def change
    create_table :trainer_badges do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
