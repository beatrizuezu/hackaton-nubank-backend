Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/logged_user', to: 'user#logged_user'

  namespace :admin do
    resources :skills
  end

  resources :users do
    resources :skills
  end

end
