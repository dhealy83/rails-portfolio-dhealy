Rails.application.routes.draw do
  resources :video_chats
  resources :projects
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :home_pages


  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

      
  
  root 'home_pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
