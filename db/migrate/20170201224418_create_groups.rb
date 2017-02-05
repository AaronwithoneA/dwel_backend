class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :token
      t.integer :tenant_id
      t.integer :landlord_id

      t.timestamps
    end
  end
end
