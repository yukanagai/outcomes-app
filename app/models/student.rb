class Student < ActiveRecord::Base
  belongs_to :contact
  belongs_to :cohort

  has_many :student_skills
  has_many :skills, :through => :student_skills

<<<<<<< HEAD



  def name
    "#{Contact.find(contact_id).first_name} #{Contact.find(contact_id).last_name}"
  end
=======
  has_secure_password
>>>>>>> master

end
