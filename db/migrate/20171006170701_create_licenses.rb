class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.integer :content_provider_id
      t.boolean :exclusive
      t.integer :terms_in_years
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
