class Event < ActiveRecord::Base
  has_attached_file :image, 
                    :styles => { :large => "800x800>",
                                 :thumb => "100x100>" }
end
