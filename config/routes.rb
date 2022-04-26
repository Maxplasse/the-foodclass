Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses
  get 'mon_profil', to: 'profiles#show', as: :mon_profil
  # get 'a_propos', to: 'infos#show', as: :a_propos
  resources :posts, only: [:index, :create, :destroy] do
    resources :emojis, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
