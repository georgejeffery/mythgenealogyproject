Rails.application.routes.draw do
  resources :relationships
  resources :person_tags
  resources :tags
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
