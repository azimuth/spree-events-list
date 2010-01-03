# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class EventsListExtension < Spree::Extension
  version "0.1"
  description "Events list for sidebar content"
  url "http://github.com/azimuth/spree-events-list"

  # Please use events_list/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end

  
  def activate

    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
