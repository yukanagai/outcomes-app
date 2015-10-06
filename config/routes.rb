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



  get '/styleguide' => 'students#styleguide'

end
