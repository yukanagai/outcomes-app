class Cohort < ActiveRecord::Base

  # programs have many cohorts. Each cohort belongs to a program
  belongs_to :program

  # cohorts have many students. each student must have a cohort.
  has_many :students

  # cohorts have many officers. officers have many cohorts.
  has_many :cohort_officers




end
