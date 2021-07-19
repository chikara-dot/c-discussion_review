Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :genres,only:[:new,:create,:index,:destroy] do
    resources :categories,only:[:new, :create, :index, :destroy] do
      resources :posts,only:[:new, :create, :index, :show, :destroy]
    end
  end
end
