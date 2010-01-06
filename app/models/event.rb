class Event < ActiveRecord::Base
  has_attached_file :image, 
                    :styles => { :large => "800x800>",
                                 :medium => "400x400>",
                                 :thumb => "100x100>" }
  validates_presence_of :begin_event, :end_event

  # visible events that start within 'to' days of today, or ended less than 'from' days ago.
  def Event.find_visible_by_date(to, from) 
    Event.find_all_by_visible(true, :conditions => ["begin_event > ? or end_event > ?", DateTime.now + to.to_i.days, DateTime.now - from.to_i.days])
  end
end
