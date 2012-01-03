class Event < ActiveRecord::Base
  has_attached_file :image, 
                    :styles => { :large => "800x800>",
                                 :medium => "400x400>",
                                 :thumb => "100x100>" }
  validates_presence_of :begin_event, :end_event

  # visible events that start within 'to' days of today, or ended less than 'from' days ago.
  def Event.find_visible_by_date(to, from) 
    Event.where('visible = ? and (begin_event < ? and end_event > ?)', true, DateTime.now + to.to_i.days, DateTime.now - from.to_i.days)
  end
end
