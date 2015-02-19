Rails.application.routes.draw do
  resources :employment_applications

  match "/alerts/delete", to: "alerts#delete", via: :get
  resources :alerts

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'application#index'

  match "/attorneys", to: "application#attorneys", via: :get
  match "/offices", to: "application#offices", via: :get
  match "/the_firm", to: "application#the_firm", via: :get
  match "/affiliates", to: "application#affiliates", via: :get
  match "/practice_areas", to: "application#practice_areas", via: :get
  match "/fannie_mae", to: "application#fannie_mae", via: :get
  match "/freddie_mac", to: "application#freddie_mac", via: :get
  match "/delete_alerts", to: "alerts#delete_alerts", via: :post

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
