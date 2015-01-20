Rails.application.routes.draw do
  get   'settings', to: 'settings#index'
  put   'settings', to: 'settings#update'
  patch 'settings', to: 'settings#update'

  resources :links

  root 'links#index'
end
