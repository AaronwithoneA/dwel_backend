class TodoTableChangeCol < ActiveRecord::Migration[5.0]
  def change
    change_column :todos, :type, :string, null: false
  end
end
