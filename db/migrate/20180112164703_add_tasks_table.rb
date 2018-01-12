class AddTasksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :link1
      t.string :link2
      t.string :blog
      t.timestamps
    end
  end
end
