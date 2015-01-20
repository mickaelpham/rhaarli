Rails.application.routes.draw do
  get 'configurations/show'

  resources :links

  root 'links#index'
end
