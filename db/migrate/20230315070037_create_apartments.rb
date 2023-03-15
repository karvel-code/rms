class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :name 
      t.string :contact_person
      t.string :location
      t.decimal :lat, precision: 8, scale: 3 
      t.decimal :long, precision: 8, scale: 3 

      t.timestamps
    end
  end
end
