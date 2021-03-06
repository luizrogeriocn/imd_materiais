class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /materials
  # GET /materials.json
  def index
    #@materials = Material.all
    unless current_user.roles.first.title.eql? "Teacher"
      @materials = Material.all.where(status: 0)
      @finished_materials = Material.all.where(status: 1)
    else
      @lessons = current_user.lessons

      @materials = []
      @finished_materials = []

      @lessons.each do |lesson|
        if lesson.material && lesson.material.status == "finished"
          p lesson.material
          @finished_materials << lesson.material
        elsif lesson.material && lesson.material.status == "unfinished"
          @materials << lesson.material
        end
      end
    end
  end

  def open_materials
    @year = params[:year] || 2015
    @semester = params[:semester] || 1
    @finished_materials = Offer.where(semester: @semester, year: @year).joins(:materials).includes(:materials).where(:'materials.status' =>1).flat_map(&:materials)
    @materials = Offer.where(semester: @semester, year: @year).joins(:materials).includes(:materials).where(:'materials.status' => 0).flat_map(&:materials)
  end

  def materials_by_subject
    @subjects = Subject.all.includes(:materials)
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    @comments = @material.comments.includes(:user)
    @comment = @material.comments.build
  end

  # GET /materials/new
  def new
    @lessons = current_user.lessons
    @subjects = Subject.all
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
    @lessons = current_user.lessons
    @subjects = Subject.all
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to materials_url, notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: materials_url }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to materials_url, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: materials_url }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:id, :lesson_id, :description, :file, :status,
        lesson_parameters: [:id, :lesson_number, :subject_id, :offer_id])
    end
end
