class AddApartmentRefernceToUnit < ActiveRecord::Migration[7.0]
  def change
    add_reference :units, :apartment, foreign_key: true, null: false, type: :uuid
  end
end
