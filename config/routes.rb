Rails.application.routes.draw do
  devise_for :users
  resources :entries

  root 'welcome#index'
end


  #get 'entries/index', to: 'entries#index'
  #get 'entries/new', to: 'entries#new'
  #get 'entries/:id', to: 'entries#show'
  #get 'entries/:id/edit', to: 'entries#edit'
  #post 'entries/index', to: 'entries#create'
  #patch 'entries/:id', to: 'entries#update'