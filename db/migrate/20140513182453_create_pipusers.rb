class CreatePipusers < ActiveRecord::Migration
  def change
    create_table :pipusers do |t|
      t.string :first_name
      t.string :last_name
      t.string :account_username
      t.string :ip_address
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end
