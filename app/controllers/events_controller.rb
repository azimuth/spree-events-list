class EventsController < Spree::BaseController
  def index
    @events = Event.find_visible_by_date(Spree::Config[:events_days_before], Spree::Config[:events_days_after])
  end

  def show
    @event = Event.find(params[:id])
    render :template => 'events/show'
  end

end
