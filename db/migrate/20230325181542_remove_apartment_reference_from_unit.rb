class RemoveApartmentReferenceFromUnit < ActiveRecord::Migration[7.0]
  def change
    remove_reference :units, :apartment, foreign_key: true, null: false
  end
end
