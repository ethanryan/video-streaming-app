class CreateSubscribers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.integer :zip_code
      t.string :payment_type

      t.timestamps
    end
  end
end
