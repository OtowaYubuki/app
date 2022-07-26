Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  root to: 'booking#index'
  get 'booking/index'
  resources :rooms
  post '/rooms/new', to:'rooms#create'

  get 'reservations/index'
  get 'reservations/new' # 入力画面
  get 'reservations/confirm'
  post 'reservations/confirm' # 確認画面
  post 'reservations/complete' 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
