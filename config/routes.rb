Rails.application.routes.draw do
  root 'boards#index'
  devise_for :users
  resources :boards, only: %i[index show new create]
end
