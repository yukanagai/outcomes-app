class SurveysController < ApplicationController

  def index
    #@user is a contact
    @user = current_user
    @survey_user = Student.find_by(contact: @user.id)
    binding.pry
  end

end
