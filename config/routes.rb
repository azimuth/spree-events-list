Rails.application.routes.draw do
  namespace :admin do
    resources :events
  end
  
  match "/events" => "events#index"
  match '/events/show/:id' => "events#show"
  
end