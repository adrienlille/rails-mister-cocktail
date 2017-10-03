Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:show, :destroy]

  root to: "cocktails#index"
end
