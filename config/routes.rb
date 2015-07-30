Rails.application.routes.draw do


  devise_for :users
  root 'ideas#index'
  # Routes for the Comment resource:
  # CREATE
  get '/comments/new',      :controller => 'comments', :action => 'new',    :as => 'new_comment'
  post '/comments',         :controller => 'comments', :action => 'create', :as => 'comments'

  # READ
  get '/comments',          :controller => 'comments', :action => 'index'
  get '/comments/:id',      :controller => 'comments', :action => 'show',   :as => 'comment'

  # UPDATE
  get '/comments/:id/edit', :controller => 'comments', :action => 'edit',   :as => 'edit_comment'
  patch '/comments/:id',    :controller => 'comments', :action => 'update'

  # DELETE
  delete '/comments/:id',   :controller => 'comments', :action => 'destroy'
  #------------------------------

  # edit this app so it uses the 'post', 'patch' and 'delete' http verbs and form_tag


  # CREATE
  get '/ideas/new', :controller => 'ideas', :action => 'new', as: 'new_idea'
  post '/ideas', :controller => 'ideas', :action => 'create', as: 'ideas'

  # READ
  get '/ideas/:id', :controller => 'ideas', :action => 'show', as: 'idea'
  get '/ideas', :controller => 'ideas', :action => 'index'

  # UPDATE
  get '/ideas/:id/edit', :controller => 'ideas', :action => 'edit', as: 'edit_idea'
  patch '/ideas/:id', :controller => 'ideas', :action => 'update'


  # DESTROY
  delete '/ideas/:id', :controller => 'ideas', :action => 'destroy'

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
