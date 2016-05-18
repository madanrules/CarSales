Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'reviews/new'

  get 'reviews/create'

  resources :cars do
    get :order_car, :member
  end
  get 'home/index'
   get 'home/about_us'

  devise_for :sellers
  devise_for :users
  # resources :orders
  resources :services

  root to: "home#index"
  resources :profiles, only: [:index]
  get 'buyer_profile/:id', to: 'profiles#buyer_profile'
  get 'search_model_type', to: 'cars#search_model_type'
  get 'search_date/:id', to: 'cars#search_date'
  resources :sellers, only: [:show]
  resources :reviews, only: [:new,:create]

  resources :test_rides
  get 'test_rides/:id/confirmation', to: "test_rides#confirmation"
  get 'profiles/edit' , to: 'profiles#edit'
  post 'profiles/update' , to: 'profiles#update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
