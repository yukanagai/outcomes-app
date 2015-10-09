class SurveysController < ApplicationController

def index
  #@user is a contact
  if current_user
    @user = current_user
  else
    # error: "please log in"
    redirect_to '/login'
  end
  # redirect if user is officer
  binding.pry
  if @user.is_officer?
    # add notice about not needing the survey
    redirect_to dashboard_path
  else
    #set survey_user
    @survey_user = Student.find_by(contact: @user.id)
  end
end

end
