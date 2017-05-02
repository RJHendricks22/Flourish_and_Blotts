Rails.application.routes.draw do
  devise_for :users
  resources :books, :except => [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#new"
    get "/users/sign_up", to: "devise/resgistrations#new"

  end

  get "/", to: "home#index"
  get "/search", to: "books#search"
  get "/search/results", to: "books#results"
  get "/party", to: "books#party"
  get "/books/request_trade", to: "books#request_trade"
  get "/users/sign_up", to: "devise#welcome_email"

  get "/:user_id", to: "books#index"
  get "/:user_id/book_list", to: "books#show"
  get "/:user_id/profile", to: "books#profile"
  get "/:user_id/add_a_book", to: "books#new"


end
