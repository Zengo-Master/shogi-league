Rails.application.routes.draw do
  root to: 'results#index'
  resources :kifus, only: [:new, :create, :edit, :update, :show, :destroy]
  get 'results/:id', to: 'results#win_or_lose'
end
