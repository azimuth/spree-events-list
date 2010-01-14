require File.dirname(__FILE__) + '/../../spec_helper'

describe "/events/show" do
  before do
      @event = Event.new(
            :visible => true,
            :full_description => "<p>Ka biz bang a zoodle zam doom hammer.</p>",
            :title => "Blarney Heights Rowing Contest",
            :end_event => "2013-05-13 04:00:00",
            :id => 1,
            :summary => "<p>Blargy Wargy Wuff</p>",
            :venue => "The pacific ocean.",
            :sponsor => "Pigpen Hyperbaric Diving and Dog Washing Chambers, Inc, Corp, Incorporated",
            :begin_event => "2010-01-16 05:00:00",
            :start_time => "8 AM, sharp"
      )
      assigns[:event] = @event
  end
  
  describe "When an Event has an empty further_information field" do
    
    describe "And I go to the show event page" do
      before do
         render 'events/show'
      end
      
      it "should not show the Further Information link" do
         response.should_not have_tag("a", "Further Information")
      end
      
    end
  end
  
  describe "When an Event has a string in the further_information field" do
    before do
        @event.further_information = "/walla/walla/bing/bang/"
        assigns[:event] = @event
    end
    
    describe "and I go to the show event page" do
      before do
        render 'events/show'
      end
      
      it "should show the Further Information link" do
        response.should have_tag("a", "Further Information")
      end
    end
  end
end
    