class Contact < ActiveRecord::Base

  has_many :students
  has_many :cohort_officers

  def name
    "#{first_name} #{last_name}"
  end

end
