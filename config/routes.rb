Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'kitchens#index'

  resources :kitchens, only: [:new, :create, :show, :edit, :destroy, :update] do
    collection do
      get 'search'
    end
  end
end
