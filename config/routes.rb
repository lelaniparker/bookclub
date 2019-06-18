Rails.application.routes.draw do
  root to: "books#index"
  get "/books", to: "books#index", as: "books"
  get "/books/:id", to: "books#show", as: "book"
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/:id", to:"authors#show", as: "author"
end
