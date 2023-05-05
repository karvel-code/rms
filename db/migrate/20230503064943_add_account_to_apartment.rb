class AddAccountToApartment < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :account_id, :integer
  end
end
