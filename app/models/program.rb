class Program < ActiveRecord::Base

  # programs have many cohorts. Each cohort belongs to a program
  has_many :cohorts

  has_many :program_skills
  has_many :skills, :through => :program_skills

end
