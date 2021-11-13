Rails.application.routes.draw do

  namespace :admin do
    resources :patients
  end
  devise_for :users
  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user      

  devise_scope :user do
    authenticated :user do
      root 'users#homefeed', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  namespace :admin do
    get '/home', to: "pages#home"
    get '/users', to: "users#index"
  end
end
