Rails.application.routes.draw do
  devise_for :users
  resources :homes


namespace :admin do
  constraints subdomain: 'admin' do
    devise_for :users
    resources :homes
  end
end
  # constraints subdomain: 'admin' do
  #   resources :homes
  #   devise_for :users
  # end
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
