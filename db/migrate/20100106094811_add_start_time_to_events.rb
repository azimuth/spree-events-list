class AddStartTimeToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :start_time, :string, :null => true
  end

  def self.down
    remove_column :events, :start_time
  end
end
