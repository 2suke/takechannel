Rails.application.routes.draw do
  root 'board#index'
  devise_for :users
  resources :board, only: %i[index show create]
end
