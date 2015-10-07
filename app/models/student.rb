class Student < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

  #josh: these are a pain in the ass with teh Contact model.
  # things that'd be good:
  # contact_info, with fields returned
  # cohorts, which passes cohort_id into the Cohort model and gives us the object
  # whatever! this is pretty safe as long as you don't delete things on line 8 or above.
  # -nick
  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end

  has_secure_password

end
