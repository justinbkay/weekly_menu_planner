Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  get 'home/index'
  devise_for :users

  resources :users, only: [] do
    resources :recipes, only: [:index, :new, :create, :edit, :update, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
