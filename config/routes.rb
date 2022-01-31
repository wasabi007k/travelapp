Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  #ユーザ関係のルート作成
  resources :users
end
