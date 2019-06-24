Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get "/books", to: "books#index", as: "books"
  get "/books/new", to: "books#add", as: "add_book_to_list"
  get "/books/:id", to: "books#show", as: "book"
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/:id", to:"authors#show", as: "author"
  get "/mylist", to: "book_list_items#index", as: "book_list_items"
end
