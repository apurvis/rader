class AddNotesToRaids < ActiveRecord::Migration[5.0]
  def change
    remove_column :raids, :number_of_arrests, :string
    add_column :raids, :notes, :string
    add_column :raids_clients, :arrested, :boolean
    add_column :raids_clients, :notes, :string
  end
end
