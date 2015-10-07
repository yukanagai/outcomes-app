class Student < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

  has_secure_password

  #josh: these are a pain in the ass with teh Contact model.
  # things that'd be good:
  # contact_info, with fields returned
  # cohorts, which passes cohort_id into the Cohort model and gives us the object
  # whatever! this is pretty safe as long as you don't delete things on line 8 or above.
  # -nick
  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end

  
  def contact_info_list

    [Contact.find(contact_id).email,
    Contact.find(contact_id).twitter,
    Contact.find(contact_id).github,
    Contact.find(contact_id).linkedin,
    Contact.find(contact_id).phone]

  end

  def cohort_name
    cohort.name
  end

  # def name
  #   Student.contact.first_name + " " + Student.contact.last_name
  # end

end
