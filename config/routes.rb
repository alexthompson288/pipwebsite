Pipwebsite::Application.routes.draw do
  

  devise_for :users
  resources :phonemes
  resources :users

  get '/home', :to => 'pages#home', :as => 'home'
  get '/about', :to => 'pages#about', :as => 'about'
  get '/coming', :to => 'pages#coming', :as => 'coming'
  get '/info', :to => 'pages#info', :as => 'info'
  get '/curriculum', :to => 'pages#curriculum', :as => 'curriculum'
  get '/videos', :to => 'pages#videos', :as => 'videos'
  get '/learninggames', :to => 'pages#learninggames', :as => 'learninggames'
  get '/lettersounds', :to => 'pages#lettersounds', :as => 'lettersounds'
  get '/privacy', :to => 'pages#privacy', :as => 'privacy'
  get '/terms', :to => 'pages#terms', :as => 'terms'
  get '/payment', :to => 'pages#payment', :as => 'payment'
  post '/payment1', :to => 'pages#payment1', :as => 'payment1'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pages#home'

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
