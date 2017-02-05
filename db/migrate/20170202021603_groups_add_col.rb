class GroupsAddCol < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :address, :text, null: false
  end
end
