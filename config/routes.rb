Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'

  mount_devise_token_auth_for 'Admin', at: 'auth/v1/admin'

  namespace :admins, defaults: { format: :json } do
    namespace :v1 do
      resources :books
      resources :authors
      resources :genres
      resources :languages
    end
  end
end
