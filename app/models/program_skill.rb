class ProgramSkill < ActiveRecord::Base
  belongs_to :program
  belongs_to :skill
end
