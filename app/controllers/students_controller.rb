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
    # @cohort_officer = CohortOfficer.find_by({contact: })

    if @student
      if @student.authenticate(params[:password])
        session[:student_id] = @student.id
        redirect_to student_path
      else
        redirect_to '/'
      end
    else
      if @cohort_officer.authenticate(params[:password])
        session[:cohort_officer_id] = @cohort_officer.id
        redirect_to '/cohorts'
      else
        redirect_to '/'
      end
    end
  end

  def logout
    session[:contact_id]=nil
    redirect_to '/'
  end


  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:username, :password, :completed?, :employed?, :employer, :employed_as, :contact_id, :cohort_id)
    end
end
