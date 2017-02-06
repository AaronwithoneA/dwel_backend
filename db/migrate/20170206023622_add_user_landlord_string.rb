class AddUserLandlordString < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :landlord, :string
  end
end
