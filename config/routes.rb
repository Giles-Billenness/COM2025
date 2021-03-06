Rails.application.routes.draw do
  resources :random_access_memories
  devise_for :users
  resources :builds
  resources :graphics_processing_units
  resources :central_processing_units
  #get 'home/home'
  root 'home#home'
  #route to contact page, home controller#contact page
  get 'contact',to: 'home#contact'
  #for the form contact page to submit data
  post 'request_contact', to:'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
