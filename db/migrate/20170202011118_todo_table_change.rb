class TodoTableChange < ActiveRecord::Migration[5.0]
  def change
    change_column :todos, :resolved, :boolean
    add_column :todos, :description, :string, null: false
  end
end
