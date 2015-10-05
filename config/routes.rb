Rails.application.routes.draw do
  resources :cohort_officers
  resources :student_skills
  resources :skills
  resources :students
  resources :cohorts
  resources :programs
  resources :contacts

end
