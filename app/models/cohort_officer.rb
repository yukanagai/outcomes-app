class CohortOfficer < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_secure_password
<<<<<<< HEAD
=======

  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end

>>>>>>> 35663e4d88ae8c4eb8f45f150e3b1e424e4730fd
end
