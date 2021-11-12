Rails.application.routes.draw do
  get 'admin/pages'
  get 'admin/home'
  devise_for :users
  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user      

  #devise_scope :user do
    #root "devise/sessions#new"
    #root "pages#home"
  #end

  devise_scope :user do
    authenticated :user do
      root 'users#homefeed', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
