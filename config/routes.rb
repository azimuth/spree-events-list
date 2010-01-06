# Put your extension routes here.

  map.namespace :admin do |admin|
    admin.resources :events
    admin.resource :events_settings
  end  

  map.connect "events", :controller => "events", :action => "index"
  map.connect 'events/show/:id', :controller => "events", :action => "show"
