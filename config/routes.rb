Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :sales do
    get 'list', on: :collection, as: "list"
  end

  get 'static_pages/about', as: "about"

  get 'static_pages/shipping', as: "shipping"

  get 'static_pages/rules', as: "rules"

  get 'orders/complete', as: "order_complete"

  devise_for :users
  resources :carts
  
  resources :orders 

  resources :carts
  resources :line_items  

  resources :products
  resources :users
  resources :sliders
  resources :reviews

  resources :static_pages, only: [:index, :edit, :update]

  root to: 'store#index', as: 'store'
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
