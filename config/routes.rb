Rails.application.routes.draw do
  root to: 'pages#index'
  resource :rankings, only: [:show] do
    resources :states, only: %w[index show], on: :collection
    get 'locale/:locale_id', to: 'rankings#locale', as: 'locale', on: :collection
  end
end
