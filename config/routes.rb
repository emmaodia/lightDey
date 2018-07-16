Rails.application.routes.draw do

  resources :powerstats

  get 'pages/Index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#Index'
end
