Rails.application.routes.draw do
  devise_for :users, :controllers =>{:registrations => "user/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'myportfolio' , to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create,:destroy]
  get 'myfriends', to: 'users#my_friends'
  resources :users , only: [:show]
  resources :friendships
end

