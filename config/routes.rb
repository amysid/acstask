Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  namespace :web do
    get 'users/index'
    resources :users do
    collection do
      get :check_email
      get :check_email_login
    end
   end 
  end



  namespace :admin do
    get 'homes/index'
  end
  root 'web/users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
