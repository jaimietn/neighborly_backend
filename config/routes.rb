Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :posts
      get '/retrieve_user', to: 'auth#retrieve'
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      post '/', to: 'posts#create'
      get '/profile', to: 'users#profile'
      delete '/profile', to: 'posts#destroy'
    end
  end
end

#
# get "/retrieve_user", to: "auth#retrieve"
# post "/signup", to: "users#create"
# post "/login", to: "auth#create"
#
# get "/user_books/:user_id/:book_id", to: "user_books#show"
# get "/user_books/detail/:user_id/:book_id", to: "user_books#show_detail"
# post "/user_books", to: "user_books#create"
# delete "/user_books/:user_id/:book_id", to: "user_books#destroy"
#
# get "/users/:user_id/search", to: "users#search"
#
# get "/users/:user_id/book_detail/:book_id", to: "users#get_detailed_book"
# get "/users/:user_id/my_books", to: "users#show_books"
