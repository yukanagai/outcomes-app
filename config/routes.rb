Rails.application.routes.draw do

  # contacts have all actions
  resources :contacts

  # students an are created, edited and deleted through contacts.
  resources :students
  resources :cohort_officers

  #
  resources :cohorts
  resources :programs

  resources :student_skills
  resources :skills

  root 'cohorts#index'

  # all logins processed by students controller
  get '/login' => 'students#login'
  post '/login' => 'students#login_post'
  get '/logout' => 'students#logout'



  get '/styleguide' => 'students#styleguide'

  get '/login' => 'students#login'
  post '/login' => 'students#login_post'
  get '/logout' => 'students#logout'

end
