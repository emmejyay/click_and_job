Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard/:id', to: "pages#dashboard", as: :dashboard
  get 'jobs_created_by_user', to: "pages#jobs_created_by_user", as: :jobs_created_by_user

  resources :jobs do
    resources :requests, only: %i[new create edit update]
  end
  resources :requests, only: :destroy
end
