Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "home#index"
  #ユーザーのルート作成
  resources :users
  #スケジュールのルート作成
  resources :schedules

end
