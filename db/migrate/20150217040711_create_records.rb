class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.string :checked_boxes, array: true, default: []
      
      t.timestamps
    end
  end
end
