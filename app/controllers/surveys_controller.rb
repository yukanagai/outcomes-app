class SurveysController < ApplicationController

<<<<<<< HEAD
def index
  #@user is a contact
  @user = current_user

  if @user.is_officer?
    redirect_to dashboard_path
  else
    @survey_user = Student.find_by(contact: @user.id)
  end

end
