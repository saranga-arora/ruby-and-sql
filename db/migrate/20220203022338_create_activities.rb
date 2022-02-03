class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.integer :salesperson_id 
      t.integer :contact_id 
      t.string :action 
      t.timestamps
    end
  end
end
