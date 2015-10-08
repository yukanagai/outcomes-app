class SurveysController < ApplicationController

def index
  @user = current_user
  binding.pry
end

end
