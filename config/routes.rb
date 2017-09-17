Rails.application.routes.draw do

  root 'home#index'

  get '/organisers', to:'organisers#all'
  get '/events_list', to:'events#list_all'

  resources :clients do
    resources :events
    resources :phones
    resources :emails
    resources :addresses
    resources :organisers
  end

  resources :organisers do
    resources :phones
    resources :emails
    resources :addresses
  end

  resources :venues do
    resources :phones
    resources :emails
    resources :addresses
    resources :organisers
    resources :events
    resources :rooms
  end
  
  resources :staffs do
    resources :phones
    resources :emails
    resources :addresses
    resources :events
    resources :categories
  end

  resources :events
  resources :facilities
  resources :staffs
  resources :categories
  resources :venues
  resources :equipments

end
