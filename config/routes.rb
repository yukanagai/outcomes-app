Rails.application.routes.draw do
  resources :contacts
  resources :students
  resources :cohort_officers
  resources :cohorts
  resources :programs, only: [:index, :show, :edit]

  # all logins processed by students controller
  get '/', to: 'students#login'
  get '/login', to: 'students#login'
  post '/login', to: 'students#login_post'

  get '/logout' => 'students#logout'

  get '/styleguide' => 'students#styleguide'

  get '/about' => 'students#about'

  # load data
  get '/dashboard' => 'students#dashboard'

  # load survey
  get '/survey' => 'surveys#index'
  post '/dashboard', to: 'students#send_reminder_email'
  post 'dashboard/:id', to: 'students#switch_data_source'

  get '/test' => 'students#test'

end
