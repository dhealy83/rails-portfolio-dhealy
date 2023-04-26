Rails.application.routes.draw do
  resources :video_chats
  resources :projects
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :home_pages


  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root 'home_pages#index'
end
