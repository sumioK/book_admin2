Rails.application.routes.draw do

  get "/books/:id/edit" => "books#edit"
  get "/books/new" => "books#new"
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  get "/" => "books#index"

  resources :publishers
  resource :profiel, only: %i{show edit update}

end
