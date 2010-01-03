class Event < ActiveRecord::Base
  has_attached_file :image, 
                    :styles => { :large => "800x800>",
                                 :medium => "400x400>",
                                 :thumb => "100x100>" }
end
