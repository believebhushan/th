Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'

  root to: "thredded/messageboards#index"

  get 'profile/show'
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users/:id" => "profile#show"
end
