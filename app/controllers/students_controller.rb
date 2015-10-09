class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]


  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # Added Method for dashboard
  def dashboard
    @all_students = Student.all
    @students = []

    @all_students.each do |student|
      if student.hundred_days?
        @students.push(student)
      end
    end

    return @students
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])
    @contact_info = Contact.find(@student.contact)
  end

  def login
    if current_user
      session[:contact_id] = current_user.id
    end

    render :login
  end

  def login_post
    @student = Student.find_by({username: params[:username]})
    @cohort_officer = CohortOfficer.find_by({username: params[:username]})
    # does not work! super broken

    if @student
      if @student.authenticate(params[:password])
        cookies[:id] = @student.id
        cookies[:contact_id] = @student.contact_id
        redirect_to student_path(@student.id)
      end
    elsif @cohort_officer
      if @cohort_officer.authenticate(params[:password])
        cookies[:id] = @cohort_officer.id
        cookies[:contact_id] = @cohort_officer.contact_id
        redirect_to '/cohorts'
      end
    else
      # needs message for "login not found"
      redirect_to '/'
    end
  end

  def logout

    cookies[:contact_id]=nil
    cookies[:id] = nil
    redirect_to '/'
  end


  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    # @student = Student.new(student_params)
    if session[:contact_id]
      redirect_to '/cohort'
    else
      student_params = params.require(:student).permit(:contact, :cohort, :username, :password_digest, :completed, :employer,)
      @student = Student.new(student_params)
      if @student.valid?
        @student.save
        session[:student_id] = @student.id
        redirect_to '/cohorts'
      else
        render :new
      end
    end
  end

  def update
    @student = Student.find(params[:id])
    @user = current_user

    respond_to do |format|
      if @student.update(student_params)
        binding.pry


        @user.update(contact_params)

        binding.pry

        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:username, :password, :completed, :employed, :employer, :employed_as, :contact_id, :cohort_id)
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :twitter, :github, :linkedin, :phone, :website)
    end

end
