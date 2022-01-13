Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :v1, defaults: { format: :json } do
    resources :books
    resources :authors
    resources :genres
    resources :languages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
