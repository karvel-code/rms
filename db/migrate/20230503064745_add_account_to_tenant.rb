class AddAccountToTenant < ActiveRecord::Migration[7.0]
  def change
    add_column :tenants, :account_id, :integer
  end
end
