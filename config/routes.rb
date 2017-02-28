Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "seasons#index"

    resources :seasons, only: [:index, :show]
    resources :plants, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
