class CohortOfficer < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort



  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end

end
