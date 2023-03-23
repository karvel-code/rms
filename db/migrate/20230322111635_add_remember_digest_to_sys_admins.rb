class AddRememberDigestToSysAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :sys_admins, :remember_digest, :string
  end
end
