class AddTrainerNameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :trainer_name, :string
  end
end
