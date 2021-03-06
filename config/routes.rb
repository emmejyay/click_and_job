Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'job_created/:id', to: "pages#job_created", as: :job_created
  get 'dashboard', to: "pages#dashboard", as: :dashboard

  resources :jobs do
    resources :requests, only: %i[new create]
  end
  resources :requests, only: [:destroy, :edit, :update]
end
