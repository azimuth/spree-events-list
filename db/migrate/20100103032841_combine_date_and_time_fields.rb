class CombineDateAndTimeFields < ActiveRecord::Migration
  def self.up
    add_column :events, :begin, :datetime
    add_column :events, :end, :datetime

    
    Event.find(:all).each do |c|
      c.begin = DateTime.parse( c.start_date.to_s + ' ' + c.start_time.to_s)
      c.end   = DateTime.parse(c.end_date.to_s + ' ' + c.end_time.to_s)
      c.save
    end

    remove_column :events, :start_date
    remove_column :events, :end_date
    remove_column :events, :start_time
    remove_column :events, :end_time
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
