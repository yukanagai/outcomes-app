class CohortOfficersController < ApplicationController
  before_action :set_cohort_officer, only: [:show, :edit, :update, :destroy]

  # GET /cohort_officers
  # GET /cohort_officers.json
  def index
    @cohort_officers = CohortOfficer.all
  end

  # GET /cohort_officers/1
  # GET /cohort_officers/1.json
  def show
    @cohort_officer = CohortOfficer.find(params[:id])
  end

  def login
    if current_user
      redirect_to root_path
    else
      render :login
    end
  end

  def login_post
    @cohort_officer = CohortOfficer.find_by({contact: params[:contact]})
      if @cohort_officer
        if cohort_officer.authenticate(params[:password])
          sesseion[:cohort_officer_id] = @cohort_officer.id
          redirect_to root_path
        else
          redirect_to '/login'
        end
      else
        redirect_to '/login'
      end
  end

  def logout
    session[:contact_id]=nil
    redirect_to '/login'
  end


  # GET /cohort_officers/new
  def new
    @cohort_officer = CohortOfficer.new
  end

  # GET /cohort_officers/1/edit
  def edit
  end

  # POST /cohort_officers
  # POST /cohort_officers.json
  def create
    @cohort_officer = CohortOfficer.new(cohort_officer_params)

    respond_to do |format|
      if @cohort_officer.save
        format.html { redirect_to @cohort_officer, notice: 'Cohort officer was successfully created.' }
        format.json { render :show, status: :created, location: @cohort_officer }
      else
        format.html { render :new }
        format.json { render json: @cohort_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohort_officers/1
  # PATCH/PUT /cohort_officers/1.json
  def update
    respond_to do |format|
      if @cohort_officer.update(cohort_officer_params)
        format.html { redirect_to @cohort_officer, notice: 'Cohort officer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cohort_officer }
      else
        format.html { render :edit }
        format.json { render json: @cohort_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohort_officers/1
  # DELETE /cohort_officers/1.json
  def destroy
    @cohort_officer.destroy
    respond_to do |format|
      format.html { redirect_to cohort_officers_url, notice: 'Cohort officer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort_officer
      @cohort_officer = CohortOfficer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_officer_params
      params.require(:cohort_officer).permit(:contact_id, :cohort_id, :role, :username)
    end
end
