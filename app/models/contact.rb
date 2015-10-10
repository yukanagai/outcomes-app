class Contact < ActiveRecord::Base

  has_many :students
  has_many :cohort_officers


  def is_officer?
    if CohortOfficer.find_by(contact_id: self.id)
      return true
    else
      return false
    end
  end

  def is_student?
    if Student.find_by(contact_id: self.id)
      return true
    else
      return false
    end
  end

  def hundred_days?
    Date.today - cohort.end_date >= 100
  end

  def name
  	"#{first_name} #{last_name}"
  end

end
