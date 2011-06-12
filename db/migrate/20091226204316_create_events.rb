class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :title
      t.text :venue
      t.string :sponsor
      t.string :further_information
      t.text :summary
      t.text :full_description
      t.boolean :visible
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
