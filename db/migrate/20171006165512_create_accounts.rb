class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :subscriber_id
      t.datetime :start_date
      t.boolean :free_expired

      t.timestamps
    end
  end
end
