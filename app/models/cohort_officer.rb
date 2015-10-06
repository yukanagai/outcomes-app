class CohortOfficer < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_secure_password

end
