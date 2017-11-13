Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "batches#index"
  resources :batches do
    resources :students do
      resources :evaluations
    end
  end

  namespace :api do
    resources :batches do
      resources :students do
        resources :evaluations
      end
    end
  end
end
