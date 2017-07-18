Rails.application.routes.draw do
	resources :requests, only: [:create]
	resources :user_friendships, only: [:create]
	resources :posts do
		resources :comments
		resources :likes
	end
  devise_for :users
  root "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
