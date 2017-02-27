class CreateCriminalHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :criminal_histories do |t|
      t.integer :client_id
      t.integer :date_of_arrest
      t.string :charge
      t.boolean :convicted
      t.text :notes
      t.timestamps
    end
  end
end
