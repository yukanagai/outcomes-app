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
    "#{first_name} #{last_name}"
  end


# the below method triggers on someone employed who has taken the survey
  def is_alumni?
    if employed == true && took_survey == true
      return true
    else
      return false
    end
  end

  def contact_info_list

    [Contact.find(contact_id).email,
    Contact.find(contact_id).twitter,
    Contact.find(contact_id).github,
    Contact.find(contact_id).linkedin,
    Contact.find(contact_id).phone]

  end



  def hundred_days?
    Date.today - cohort.end_date >= 100
  end



  def cohort_name
    cohort.name
  end

  has_secure_password


end
