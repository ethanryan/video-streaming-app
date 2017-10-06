class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :account_id
      t.string :tier
      t.integer :price
      t.integer :streaming_limit

      t.timestamps
    end
  end
end
