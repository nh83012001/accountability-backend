class AddCommentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :task_id
      t.text :description
      t.text :user
      t.timestamps
    end
  end
end
