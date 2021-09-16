Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :destroy, :show, :update] do
    resources :artworks, only: [:index]
  end 

  resources :artworks, only: [:create, :destroy, :show, :update] 

  resources :artwork_shares, only: [:create, :destroy] 

end
