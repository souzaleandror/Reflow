Rails.application.routes.draw do
  resources :contacts
  resources :candidates
  resources :jobs
  resources :type_contractions
  resources :companies
  resources :departments
  root 'home#index'
  get 'welcome/index'
  devise_for :admin, 
              path:  'admin', 
              path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }, 
              controllers: { sessions: "admins/sessions", registrations: "admins/registrations", passwords: 'admins/passwords' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
