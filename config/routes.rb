Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"

  # 名前付きルート（パス名）をaboutに設定するための記述
  get 'homes/about', to: 'homes#about', as: 'about'
  # resourcesはpost_imagesリソース用の特定のルートを定義する簡潔な方法でonlyで利用可能なアクションをnew、index、showに限定している
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end