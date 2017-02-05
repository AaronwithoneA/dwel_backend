class UserTableCorrections < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :email
    add_index :users, :username, unique: true

  end
end
