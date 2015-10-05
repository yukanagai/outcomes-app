class Contact < ActiveRecord::Base

  has_many :students
  has_many :cohort_officers

end
