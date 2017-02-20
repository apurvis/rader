class CreateRaids < ActiveRecord::Migration[5.0]
  def change
    create_table :raids do |t|
      t.string :type_of_raid
      t.datetime :raided_at
      t.string :address
      t.integer :zip_code
      t.string :how_did_ice_make_its_presence_known
      t.string :name_of_answerer
      t.integer :age_of_answerer
      t.text :narrative_of_door_interaction
      t.text :narrative_of_entrance
      t.text :narrative_of_interaction_inside_home
      t.integer :number_of_arrests
      t.timestamps
    end
  end
end
