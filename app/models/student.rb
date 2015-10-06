class Student < ActiveRecord::Base
  has_secure_password
  
  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

end
