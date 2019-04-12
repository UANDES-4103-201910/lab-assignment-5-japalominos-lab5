Rails.application.routes.draw do
    
  resources :users do
      member do
          get 'user_with_most_tickets'
      end
  end
  resources :event_venues
    
  resources :events do
      resources :ticket_types do
        resources :tickets
      end
  end
end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
