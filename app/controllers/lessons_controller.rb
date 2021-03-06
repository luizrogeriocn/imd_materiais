class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /lessons
  # GET /lessons.json
  def index
    unless current_user.roles.first.title.eql? "Teacher"
      @lessons = Lesson.all.includes(:subject, :offer, :users)
    else
      @lessons = current_user.lessons.includes(:subject, :offer, :users)
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @subject = @lesson.subject
    @offer = @lesson.offer
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @lesson.users.build
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to lessons_url, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: lessons_url }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to lessons_url, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: lessons_url }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:lesson_number, :subject_id, :offer_id, :description,
        :lesson_users_attributes => [:id, :user_id, :lesson_id, :_destroy])
    end
end
