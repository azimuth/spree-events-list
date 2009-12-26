require File.dirname(__FILE__) + '/../spec_helper'

describe Events do
  before(:each) do
    @events = Events.new
  end

  it "should be valid" do
    @events.should be_valid
  end
end
