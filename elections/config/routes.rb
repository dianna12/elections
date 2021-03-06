Rails.application.routes.draw do
get 'static/index'

devise_for :admin_users, ActiveAdmin::Devise.config
ActiveAdmin.routes(self)
resource :user_session, :only => [:new, :create, :destroy]
resources :users
resources :votes
resources :committees_provinces
resources :committees
resources :provinces
get 'provinces/:id/frekwencja' => 'provinces#frekwencja', :as => :provinces_frekwencja
resources :constituencies
get 'constituencies/:id/frekwencja' => 'constituencies#frekwencja', :as => :constituencies_frekwencja
resources :form
get 'list' => 'form#list', :as => :list
resources :formtwo, :only => [:index, :edit]
root :to => 'static#index'
get 'login' => 'user_sessions#new', :as => :login
get 'logout' => 'user_sessions#destroy', :as => :logout
#Rails.application.routes.draw do
#  get 'user_sessions/destroy'

#  get 'user_sessions/new'

#  get 'user_sessions/create'

#  get 'users/new'

#  get 'users/create'

#  get 'users/edit'

#  get 'users/update'

#  resources :users

#  resources :votes

#  resources :committees_provinces

#  resources :committees

#  resources :provinces

#  resources :constituencies

#  devise_for :admin_users, ActiveAdmin::Devise.config
#  ActiveAdmin.routes(self)

# # AuthlogicV3::Application.routes.draw do
#  get 'user_sessions/destroy'

#  get 'user_sessions/new'

#  get 'user_sessions/create'

#    resources :users, :only => [:new, :create, :edit, :update]
#    # get "users/new"
#    # get "users/edit"
#    #...
# #end
#  # The priority is based upon order of creation: first created -> highest priority.
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
