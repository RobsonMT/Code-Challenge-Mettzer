Rails.application.routes.draw do
  devise_for :users

  root to: "articles#index"

  get "/search", to: "articles#search", as: :search
  post "/save_later", to: "articles#save_later", as: :save_later
  get "/saved", to: "articles#saved_list", as: :saved_list
  delete "/saved/:id", to: "articles#remove_saved", as: :remove_saved_article

end
