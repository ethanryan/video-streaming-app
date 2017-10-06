class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.integer :subscriber_id
      t.integer :account_number
      t.string :issuer
      t.date :expiration_date

      t.timestamps
    end
  end
end
