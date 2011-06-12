class ChangeDateNamesOnceAgain < ActiveRecord::Migration
  def self.up
    rename_column :events, :begin, :begin_event
    rename_column :events, :end, :end_event
  end

  def self.down
  end
end
