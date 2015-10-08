Rails.application.routes.draw do
  resources :contacts
  resources :students
  resources :cohort_officers
  resources :cohorts
  resources :programs

  # route all officers here?
  get "/cohort/:id/officers", to: 'cohort_officers#show'

  # we need a route for "officers attached to this cohort" in 'cohort_officers#show'

  # all logins processed by students controller
  get '/', to: 'students#login'
  get '/login', to: 'students#login'
  post '/login', to: 'students#login_post'
  get '/logout' => 'students#logout', redirect_to: "students#login"


  # get '/programs', to: 'programs#index'
  get '/program_data', to: 'cohort_officers#index'

  get '/styleguide' => 'students#styleguide'

  get '/login' => 'students#login'
  post '/login' => 'students#login_post'
  get '/logout' => 'students#logout'

  # load data
  get '/dashboard' => 'students#dashboard'
  # load survey
  get '/survey' => 'surveys#index'
end
