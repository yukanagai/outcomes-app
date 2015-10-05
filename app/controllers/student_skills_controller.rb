class StudentSkillsController < ApplicationController
  before_action :set_student_skill, only: [:show, :edit, :update, :destroy]

  # GET /student_skills
  # GET /student_skills.json
  def index
    @student_skills = StudentSkill.all
  end

  # GET /student_skills/1
  # GET /student_skills/1.json
  def show
  end

  # GET /student_skills/new
  def new
    @student_skill = StudentSkill.new
  end

  # GET /student_skills/1/edit
  def edit
  end

  # POST /student_skills
  # POST /student_skills.json
  def create
    @student_skill = StudentSkill.new(student_skill_params)

    respond_to do |format|
      if @student_skill.save
        format.html { redirect_to @student_skill, notice: 'Student skill was successfully created.' }
        format.json { render :show, status: :created, location: @student_skill }
      else
        format.html { render :new }
        format.json { render json: @student_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_skills/1
  # PATCH/PUT /student_skills/1.json
  def update
    respond_to do |format|
      if @student_skill.update(student_skill_params)
        format.html { redirect_to @student_skill, notice: 'Student skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_skill }
      else
        format.html { render :edit }
        format.json { render json: @student_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_skills/1
  # DELETE /student_skills/1.json
  def destroy
    @student_skill.destroy
    respond_to do |format|
      format.html { redirect_to student_skills_url, notice: 'Student skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_skill
      @student_skill = StudentSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_skill_params
      params.require(:student_skill).permit(:student_id, :skill_id, :experience)
    end
end
