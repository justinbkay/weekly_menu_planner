Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  resources :users, only: [] do
    resources :recipes, only: [:index, :new, :create, :edit, :update, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
