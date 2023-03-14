class CreateSysAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :sys_admins do |t|

      t.timestamps
    end
  end
end
