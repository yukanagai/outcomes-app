class CohortOfficer < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_secure_password

  def name
    "#{contact.first_name} #{contact.last_name}"
  end

end
