class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]


  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])
    @contact_info = Contact.find(@student.contact)
  end

  def login
    if current_user
      redirect_to student_path
    else
      render :login
    end
  end

  def login_post
    @student = Student.find_by({username: params[:username]})
    @cohort_officer = CohortOfficer.find_by({username: params[:username]})
    # does not work! super broken

    if @student
      if @student.authenticate(params[:password])
        session[:id] = @student.id
        session[:contact_id] = @student.contact_id
        redirect_to student_path [@student.id]
      end
    elsif @cohort_officer
      if @cohort_officer.authenticate(params[:password])
        session[:id] = @cohort_officer.id
        session[:contact_id] = @cohort_officer.contact_id
        redirect_to '/cohorts'
      end
    else
      # needs message for "login not found"
      redirect_to '/'
    end
  end

  def logout
    session[:contact_id]=nil
    session[:id] = nil
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

  #   respond_to do |format|
  #     if @student.save
  #       format.html { redirect_to @student, notice: 'Student was successfully created.' }
  #       format.json { render :show, status: :created, location: @student }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @student.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update(student_params)
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

  # def login
  #   if current_user
  #     redirect_to '/cohorts'
  #   else
  #     render :login
  #   end
  # end

  # def login_post

  #   @contact = Contact.find_by({email: params[:email]})
  #   @student = Student.find_by(contact_id: @contact.id)
  #   if @contact
  #     if @student['password'].authenticate(params[:password]) || @cohortofficer.password.authenticate(params[:password])
  #       session[:contact_id] = @contact.id
  #       redirect_to '/cohorts'
  #     else
  #       redirect_to '/login'
  #     end
  #   else
  #     redirect_to '/login'
  #   end
  # end

  # def logout
  #   session[:contact_id]=nil
  #   redirect_to '/login'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:username, :password, :completed, :employed, :employer, :employed_as, :contact_id, :cohort_id, :checkbox_value)
    end
end
