class Survey < ActiveRecord::Base

  def is_officer?
    if CohortOfficer.find_by(contact_id: self.id)
      return true
    else
      return false
    end
  end



end
