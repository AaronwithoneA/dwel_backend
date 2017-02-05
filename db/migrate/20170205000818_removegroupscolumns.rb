class Removegroupscolumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :tenant_id
    remove_column :groups, :landlord_id
  end
end
