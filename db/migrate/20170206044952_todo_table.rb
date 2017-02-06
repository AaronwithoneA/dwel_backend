class TodoTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :type
    add_column :todos, :category, :string
  end
end
