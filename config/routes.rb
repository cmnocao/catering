Rails.application.routes.draw do

  get '/organisers', to:'organisers#all'

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

  resources :events
  resources :facilities
    

  root 'home#index'

end
