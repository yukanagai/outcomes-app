class Student < ActiveRecord::Base

  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

  # Awesome scope made with the help of Awesome Jaden! -t
  scope :employed_in_90_days, -> { joins(:cohort).where('students.employed_date - cohorts.end_date <= 90') }

  #josh: these are a pain in the ass with teh Contact model.
  # things that'd be good:
  # contact_info, with fields returned
  # cohorts, which passes cohort_id into the Cohort model and gives us the object
  # whatever! this is pretty safe as long as you don't delete things on line 8 or above.
  # -nick

  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end

  def employed_in_90_days?
    cohort_end_date = Student.find(id).cohort.end_date #returns cohort end date by student id
    employment_start_date = Student.find(id).employed_date #returns date employed_date if any
    if employed_date?
      if (cohort_end_date - employment_start_date).to_i <= 90
        return true #(cohort_end_date - employment_start_date).to_i
      end
    end
  end

  has_secure_password

end
