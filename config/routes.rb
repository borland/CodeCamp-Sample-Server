ActionController::Routing::Routes.draw do |map|
  
  map.resources :person, :has_many => :picture
  map.resources :person_admin, :has_many => :picture_admin

  map.root :controller => "person_admin"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
