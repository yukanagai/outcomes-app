class Student < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

  has_secure_password

  def name
    Student.contact.first_name + " " + Student.contact.last_name
  end


end
