class AddLikesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :task_id
      t.integer :count
      t.timestamps
    end
  end
end
