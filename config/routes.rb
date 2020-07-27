Rails.application.routes.draw do
  devise_for :users
  root 'threads#index'
  get  'threads/show'
end
