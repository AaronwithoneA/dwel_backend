class TodoTableAddCol < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :resolved, :boolean
  end
end
