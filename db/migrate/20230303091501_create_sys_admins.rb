class CreateSysAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :sys_admins do |t|
      t.string   :first_name, null: false
      t.string   :last_name, null: false
      t.string   :email, null: false

      t.timestamps
    end
  end
end
