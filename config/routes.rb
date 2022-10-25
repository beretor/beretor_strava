Rails.application.routes.draw do
  resources :rides
  resources :training_runs
  devise_for :users
  root 'welcome#index'
  
end
