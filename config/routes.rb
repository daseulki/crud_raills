Rails.application.routes.draw do

  get 'user/index' => 'user#index'
  get 'user/new' => 'user#new'
  get 'user/create' => 'user#create'
  get 'user/show/:id' => 'user#show'
  
  get 'user/add_comments' =>'user#add_comments'

  get 'user/edit/:id' => 'user#edit'
  get 'user/update/:id' => 'user#update'
  get 'user/destroy/:id' => 'user#destroy'

  get 'user/createuser' => 'user#createuser'

  get 'user/idfail' => 'user#idfail'
  get 'user/pwdfail' => 'user#pwdfail'

  post 'user/configuser' => 'user#configuser'
  get 'user/information' => 'user#information'
  delete 'user/delete/:id' => 'user#delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'user#index'

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
