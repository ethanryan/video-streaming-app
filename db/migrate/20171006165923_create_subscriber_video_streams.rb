class CreateSubscriberVideoStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriber_video_streams do |t|
      t.integer :subscriber_id
      t.integer :video_id
      t.date :date
      t.integer :duration
      t.string :location

      t.timestamps
    end
  end
end
