class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string   :domain
      t.string   :sub_domain
      t.string  :name
      t.string :email
      t.string :address
      t.datetime :onboarding_completed_at
      t.string :sign_up_code

      t.timestamps
    end
  end
end
