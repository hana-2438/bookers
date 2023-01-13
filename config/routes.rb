Rails.application.routes.draw do
 root to: 'homes#top'
  resources :books #rails routes -E　でルーティング確認
  

  # For details on the DSL available withsin this file, see https://guides.rubyonrails.org/routing.html
end
