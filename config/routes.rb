Rails.application.routes.draw do
  resources :reminders
  resources :postit_notes
  devise_for :admins
  devise_for :users
  root to: "pages#home"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "sessions#create"
  post "/login", to: "sessions#create"
  get "about", to: "pages#about", as: :about
  get 'admin' => 'admin#primary', as: :admin_root
  get 'users' => 'users#primary', as: :user_root

  get '/reminders', to: 'reminders#index', as: :point
end
