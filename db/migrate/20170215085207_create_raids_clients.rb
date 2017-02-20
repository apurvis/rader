class CreateRaidsClients < ActiveRecord::Migration[5.0]
  def change
    create_table :raids_clients do |t|
      t.integer :raid_id
      t.integer :client_id
      t.timestamps
    end
  end
end
