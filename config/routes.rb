Rails.application.routes.draw do
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "profil", to: "devise/registrations#edit"

  resources :events do
    resources :bookings, only: %i[create]
    collection do
      get :my_events
    end
  end

  resources :bookings, only: %i[index show destroy]
  devise_for :users, controllers: { registrations: 'registrations' }


  get "/profile", to: "profiles#show"
end
