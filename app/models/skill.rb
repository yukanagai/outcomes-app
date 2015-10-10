class Skill < ActiveRecord::Base

  has_many :student_skills
  has_many :students, :through => :student_skills

  has_many :program_skills
  has_many :programs, :through => :program_skills






end
