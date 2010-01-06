require File.dirname(__FILE__) + '/../spec_helper'

describe EventsController do

  #Delete these examples and add some real ones
  it "should use EventsController" do
    controller.should be_an_instance_of(EventsController)
  end


  it "GET 'index' should be successful" do
    get 'index'
    response.should be_success
  end

  it "GET 'show' should be successful" do
    get 'show'
    response.should be_success
  end
end
