Rails.application.routes.draw do
  resources :accounts do
    resources :account_follows, only: %i[index create destroy]
    resources :tweets, only: %i[index create show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
