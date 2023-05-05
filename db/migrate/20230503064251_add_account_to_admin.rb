class AddAccountToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :account_id, :integer
  end
end
