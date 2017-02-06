class TodoTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :category
    
  end
end
