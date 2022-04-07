Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses
  get 'mon_profil', to: 'profiles#show', as: :mon_profil
  resources :posts, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
