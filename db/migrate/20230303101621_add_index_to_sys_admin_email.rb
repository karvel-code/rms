class AddIndexToSysAdminEmail < ActiveRecord::Migration[7.0]
  def change
    add_index :sys_admins, :email, unique: true
  end
end
