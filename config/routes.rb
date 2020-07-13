Rails.application.routes.draw do
  get 'home/index'
  

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #rest только new, create, причем new путь просто /contacts
  resource :contacts, only: [:new, :create], path_names: { :new => '' }

  #смотри разницу между resource и resources
  #создаём rest весь список
  resources :articles
end
