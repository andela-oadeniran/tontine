Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups do
    resources :users, except: :create
    resources :amounts, except: :destroy
  end

  post "signup", to: "users#create"
  post "login", to: "authentication#authenticate"
  root 'groups#index'
end
