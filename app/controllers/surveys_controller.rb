class SurveysController < ApplicationController

def index
  #@user is a contact
  @user = current_user

  # redirect if user is officer
  if @user.is_officer?
    # add notice about not needing the survey
    redirect_to dashboard_path
  else
    #set survey_user
    @survey_user = Student.find_by(contact: @user.id)
  end

end

end
