Pipwebsite::Application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :pipisodes, only: [:index, :show]
  resources :posts, only: :show
  resources :products, only: :show
  resources :programmodules, only: [:index, :show]
  resources :programsessions, only: :show
  resources :stages, only: :show
  resources :stories, only: [:index, :show]
  resources :users
  resources :words, only: :show


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

  root 'pages#home1'
end
