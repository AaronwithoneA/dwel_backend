class TodoTableRemoveCol < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :resolved
  end
end
