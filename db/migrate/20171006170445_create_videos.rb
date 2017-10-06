class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.integer :license_id
      t.integer :genre_id
      t.string :title
      t.string :type
      t.integer :concurrent_subscriber_limit

      t.timestamps
    end
  end
end
