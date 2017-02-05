class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.integer :group_id, null: false
      t.text :body, null: false
      t.boolean :resolved, null: false
      t.string :type

      t.timestamps
    end
  end
end
