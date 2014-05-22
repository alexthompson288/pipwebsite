Pipwebsite::Application.routes.draw do
  
  resources :data_phonemes

  resources :data_words

  resources :sections

  resources :games

  resources :programmodules

  resources :programsessions

  resources :storypages

  resources :stories

  post "pages/testusername"
  get "pages/testusername"

  # devise_for :pipusers
  # resources :pipusers

  resources :datasentences

  resources :posts

  resources :importantvocabs

  resources :sentences

  resources :quizquestions

  resources :pipisodes

  resources :words


  resources :activities

  resources :learningsessions

  resources :glossaryterms

  devise_for :users

  devise_for :admins
  
  resources :skills

  resources :products

  resources :stages

  resources :learninggames

  
  resources :phonemes
  resources :users
  get '/findwhichstage', :to => 'pages#findwhichstage', :as => 'findwhichstage'
  get '/programmes', :to => 'pages#programmes', :as => 'programmes'
  get '/mypage', :to => 'pages#mypage', :as => 'mypage'
  get '/colourbands', :to => 'pages#colourbands', :as => 'colourbands'
  get '/home', :to => 'pages#home', :as => 'home'
  get '/pricing', :to => 'pages#pricing', :as => 'pricing'
  get '/about', :to => 'pages#about', :as => 'about'
  get '/coming', :to => 'pages#coming', :as => 'coming'
  get '/info', :to => 'pages#info', :as => 'info'
  get '/curriculum', :to => 'pages#curriculum', :as => 'curriculum'
  get '/videos', :to => 'pages#videos', :as => 'videos'
  # get '/learninggames', :to => 'pages#learninggames', :as => 'learninggames'
  get '/lettersounds', :to => 'pages#lettersounds', :as => 'lettersounds'
  get '/privacy', :to => 'pages#privacy', :as => 'privacy'
  get '/terms', :to => 'pages#terms', :as => 'terms'
  get '/payment', :to => 'pages#payment', :as => 'payment'
  post '/payment1', :to => 'pages#payment1', :as => 'payment1'
  get '/allgames', :to => 'pages#allgames', :as => 'allgames'
  get '/jobs', :to => 'pages#jobs', :as => 'jobs'
  get '/home1', :to => 'pages#home1', :as => 'home1'
  get '/apps', :to => 'pages#apps', :as => 'apps'
  get '/glossary', :to => 'pages#glossary', :as => 'glossary'
  get '/literaturereview', :to => 'pages#literaturereview', :as => 'literaturereview'
  get '/partnershipprogramme', :to => 'pages#partnershipprogramme', :as => 'partnershipprogramme'
  get '/pippad', :to => 'pages#pippad', :as => 'pippad'
  get '/teacherdownload', :to => 'pages#teacherdownload', :as => 'teacherdownload'
  get '/fullappdownload', :to => 'pages#fullappdownload', :as => 'fullappdownload'
  get '/updatewords', :to => 'pages#update_words', :as => 'updatewords'
  get '/updatephonemes', :to => 'pages#update_phonemes', :as => 'updatephonemes'
  get '/updatepipisodes', :to => 'pages#update_pipisodes', :as => 'updatepipisodes'
  get '/updatequizquestions', :to => 'pages#update_quizquestions', :as => 'updatequizquestions'
  get '/updatesentences', :to => 'pages#update_sentences', :as => 'updatesentences'
  get '/updateimportantvocabs', :to => 'pages#update_importantvocabs', :as => 'updateimportantvocabs'
  get '/updatestages', :to => 'pages#update_stages', :as => 'updatestages'
  get '/updateposts', :to => 'pages#update_posts', :as => 'updateposts'
  get '/updatedatasentences', :to => 'pages#update_datasentences', :as => 'updatedatasentences'
  get '/updatestories', :to => 'pages#update_stories', :as => 'updatestories'
  get '/updatestorypages', :to => 'pages#update_storypages', :as => 'updatestorypages'
  get '/updatemodulessessions', :to => 'pages#update_modulessessions', :as => 'updatemodulessessions'
    get '/updatedata', :to => 'pages#update_data', :as => 'updatedata'
    get '/banks', :to => 'pages#banks', :as => 'banks'





  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pages#home1'

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
