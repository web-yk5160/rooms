Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :rooms
    end
    namespace :v2 do
      resources :rooms
      # v2のリソース宣言 ...
    end
  end
  # root 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
