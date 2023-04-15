class SwitchToUuid < ActiveRecord::Migration[7.0]
  def up
    add_column :apartments, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :apartments, :id, :integer_id
    rename_column :apartments, :uuid, :id
    execute "ALTER TABLE apartments drop constraint apartments_pkey;"
    execute "ALTER TABLE apartments ADD PRIMARY KEY (id);"

    # Optionally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY apartments ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :apartments, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS apartments_id_seq"
    remove_column :apartments , :integer_id

    

    # add_column :sys_admins, :uuid, :uuid, default: "gen_random_uuid()", null: false
    # rename_column :sys_admins, :id, :integer_id
    # rename_column :sys_admins, :uuid, :id
    # execute "ALTER TABLE sys_admins drop constraint sys_admins_pkey;"
    # execute "ALTER TABLE sys_admins ADD PRIMARY KEY (id);"

    # Optionally you remove auto-incremented
    # default value for integer_id column
    # execute "ALTER TABLE ONLY sys_admins ALTER COLUMN integer_id DROP DEFAULT;"
    # change_column_null :sys_admins, :integer_id, true
    # execute "DROP SEQUENCE IF EXISTS sys_admins_id_seq"
    # remove_column :sys_admins , :integer_id


    add_column :units, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :units, :id, :integer_id
    rename_column :units, :uuid, :id
    execute "ALTER TABLE units drop constraint units_pkey;"
    execute "ALTER TABLE units ADD PRIMARY KEY (id);"

    # Optionally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY units ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :units, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS units_id_seq"
    remove_column :units , :integer_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  # def change
  #   # Add a new UUID column
  #   add_column :apartments, :uuid, :uuid, default: "gen_random_uuid()", null: false

  #   # Copy the existing id values to the uuid column
  #   reversible do |dir|
  #     dir.up do
  #       execute "UPDATE table_name SET uuid = uuid_generate_v4()"
  #     end
  #   end

  #   # Remove the existing id column
  #   remove_column :table_name, :id

  #   # Rename the uuid column to id
  #   rename_column :table_name, :uuid, :id

  #   # Update the primary key
  #   execute "ALTER TABLE table_name ADD PRIMARY KEY (id);"
  # end
end
