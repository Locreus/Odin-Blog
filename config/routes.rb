Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles do
    resources :comments
  end
  resources :new_article
  resources :edit_article
  resources :tags
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
