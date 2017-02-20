class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :gender, limit: 1
      t.string :country_of_origin, limit: 2
      t.datetime :started_us_residence_at
      t.boolean :family_in_us
      t.text :notes
      t.string :contact_phone_number
      t.timestamps
    end
  end
end
