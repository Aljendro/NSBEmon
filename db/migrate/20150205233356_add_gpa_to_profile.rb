class AddGpaToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :gpa, :decimal
  end
end
