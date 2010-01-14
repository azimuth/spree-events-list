require File.dirname(__FILE__) + '/../../../spec_helper'


describe "admin/events/index.html.erb" do 
  it "should provide a link to create a new event" do
    events = [ mock_model(Event, :begin_event => DateTime.now, :end_event => DateTime.now, :title => "Basic Meat Foon Giveaway") ]
    assigns[:events] = events
    render
    response.should contain("New Event")
  end
end

