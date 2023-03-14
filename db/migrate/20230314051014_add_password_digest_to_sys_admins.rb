class AddPasswordDigestToSysAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :sys_admins, :password_digest, :string
  end
end
