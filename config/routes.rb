Rails.application.routes.draw do

  # contacts have all actions
  resources :contacts

  # students an are created, edited and deleted through contacts.
  resources :students

  # this is where an officer gets to see some results data/graphs
  resources :cohort_officers

  resources :cohorts



  get "/data", to: 'cohort_officers#index'

  # route all officers here?
  get "/cohort/:id/officers", to: 'cohort_officers#show'

  # we need a route for "officers attached to this cohort" in 'cohort_officers#show'

  # all logins processed by students controller
  get '/' => 'students#login'
  post '/login' => 'students#login_post'
  get '/logout' => 'students#logout', redirect_to: "students#login"




  get '/program_data', to: 'cohort_officers#index'


  get '/styleguide' => 'students#styleguide'

end
