class TodoTablesss < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :category, :string
  end
end
