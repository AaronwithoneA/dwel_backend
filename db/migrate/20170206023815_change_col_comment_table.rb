class ChangeColCommentTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :user_id
    add_column :comments, :username, :string, null: false

  end
end
