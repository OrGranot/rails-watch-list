Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :destroy ] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
