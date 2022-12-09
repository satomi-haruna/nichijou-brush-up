Rails.application.routes.draw do
  root to: 'homes#top'

  # 会員側 devise
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
    get 'search_events' => 'search#search_events'
    resources :events do
      resources :diaries, except: [:index]
    end
    get 'users/my_page' => 'users#show'
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    # 退会確認画面
    get 'users/unsubscribe' => 'users#unsubscribe'
    # user論理削除
    patch 'users/withdraw' => 'users#withdraw'
  end

  # ゲストログイン
  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  # 管理者用 devise
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root "users#index"
    patch 'users/withdraw/:id' => 'users#withdraw', as: "users_withdraw"
  end

end
