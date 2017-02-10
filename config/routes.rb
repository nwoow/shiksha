Rails.application.routes.draw do
  devise_for :users
  resources :homes


  constraints subdomain: 'admin' do

    namespace :v1 do

      devise_for :users
      resources :homes

    end
end

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
