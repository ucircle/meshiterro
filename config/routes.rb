Rails.application.routes.draw do
    devise_for :users
    root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'homes/about' => 'homes#about', as: 'about'
  
    resources :postimages, only: [:new, :index, :show, :create, :destroy] do
      resources :post_comments, only: [:create, :destroy]
    end
    resources :users, only:[:show, :edit, :update]
end
