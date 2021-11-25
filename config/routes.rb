Rails.application.routes.draw do
  resources :followers
  resources :subjects
  resources :instructors
  resources :courses
  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end

  #root "instructors#index" #get "/instructors", to: "instructors#index"

  root 'sessions#welcome'

  #users routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :enrollments

  #session routes
  get '/welcome', to: 'sessions#welcome'
  get '/signup', to:  'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create' 
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy' 
  get '/search', to: 'search#search'

  # get '/search_result', to: 'search#result'

  post '/', to: 'sessions#welcome'

  get '/enrolled_course', to: 'enrollments#index'
  post'/enroll/:course_id', to: 'enrollments#create'
  get 'index/show'
  


 

  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
