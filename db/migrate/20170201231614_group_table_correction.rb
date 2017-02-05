class GroupTableCorrection < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :token, :string, null: false
  end
end
