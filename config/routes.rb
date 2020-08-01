Rails.application.routes.draw do
  root 'board#index'
  get 'board/show'
  devise_for :users
end
