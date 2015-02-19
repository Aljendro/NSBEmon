class AddPointValueToRecords < ActiveRecord::Migration
  def change
    add_column :records, :point_values, :string, array: true, default: []
  end
end
