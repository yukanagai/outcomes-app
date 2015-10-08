class Contact < ActiveRecord::Base

  has_many :students
  has_many :cohort_officers

  def is_officer?
    if CohortOfficer.find_by(contact_id: id)
      return true
    else
      return false
    end
  end

  def name
  	"#{first_name} #{last_name}"
  end

end
