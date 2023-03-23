class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string 'floor'
      t.integer 'house_no'
      t.belongs_to 'apartment', foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
