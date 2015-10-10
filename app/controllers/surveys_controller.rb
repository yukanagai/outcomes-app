class SurveysController < ApplicationController

def index
  #@user is a contact
  @user = current_user

  if @user.hundred_days?
    @survey_user = Student.find_by(contact: @user.id)
  elsif @user.is_officer?
    # add notice about not needing the survey
    redirect_to dashboard_path, notice: "You don't get to take the survey, you're an officer!"
  else
    redirect_to studenth_path, notice: "It hasn't been 100 days yet!"
  end

end

end
