Rails.application.routes.draw do


  resources :followers
  resources :subjects
  resources :instructors
  resources :courses
  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end
  resources :conversations do
    resources :messages
  end 

  #root "instructors#index" #get "/instructors", to: "instructors#index"

  root 'sessions#welcome'

  #users routes
  resources :users
  get '/alumni', to: 'users#alumni'
  get '/student', to: 'users#student'
  get '/searchName', to: 'users#search_name'
  get '/searchInterest', to: 'users#search_interest'
  get '/searchMajor', to: 'users#search_major'

  #session routes
  get '/welcome', to: 'sessions#welcome'
  get '/signup', to:  'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create' 
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy' 
  get '/search', to: 'search#search'
  get '/searchName', to: 'users#search_name'

  post '/conversations/new', to:  'conversations#new'


  # get '/search_result', to: 'search#result'

  post '/', to: 'sessions#welcome'
  get 'index/show'
  


 

  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
