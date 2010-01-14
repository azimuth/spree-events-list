require File.dirname(__FILE__) + '/../../spec_helper'

describe "/events/index" do
  before do
    render 'events/index'
  end
  it "should display a list of events"
end
