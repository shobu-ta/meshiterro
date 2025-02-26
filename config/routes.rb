Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"

  # 名前付きルート（パス名）をaboutに設定するための記述
  get 'homes/about', to: 'homes#about', as: 'about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end