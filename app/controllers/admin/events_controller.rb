class Admin::EventsController < Admin::BaseController
  resource_controller
  
  def index
    @events = Event.order('begin_event DESC')
  end
  
  update.response do |wants|
    wants.html { redirect_to edit_admin_event_url(Event.find(@event.id)) }
  end

  update.after do
    Rails.cache.delete('events')
  end

  create.response do |wants|
    wants.html { redirect_to collection_url }
  end

  create.after do
    Rails.cache.delete('events')
  end

end
