Rails.application.routes.draw do
  root 'welcome#index'
  resources :states
  resources :resources
  resources :people
  resources :occurrences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
