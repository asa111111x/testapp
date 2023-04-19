Rails.application.routes.draw do
  get 'comment/index'
  resources :articles
  devise_for :users
  root "articles#index"

  
  resources :articles do
    resources :comments do
      post 'reply', to: "comments#creare"
    end
    member do
      post 'upvote', to: "vote#upvote"
      post 'unvote', to: "vote#unvote"
    end
  end
  
  resources :comments do
    member do
      post 'upvote', to: "vote#upvote"
      post 'unvote', to: "vote#unvote"
    end
  end

end
