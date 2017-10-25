Rails.application.routes.draw do
  root 'home#index'
  get 'sign_in' => 'home#sign_in', as: :sign_in
  post 'sign_in' => 'home#handle_sign_in'
  get 'sign_up' => 'home#sign_up', as: :sign_up
  post 'sign_up' => 'home#handle_sign_up'
  

  resources :comments
  resources :posts
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
