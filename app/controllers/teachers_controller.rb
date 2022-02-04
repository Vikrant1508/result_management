class TeachersController < ApplicationController
    before_action :authenticate_user!
  before_action :set_teacher, only: %i[ show edit update destroy ]

 
  def index
    @teachers = Teacher.all
  end

 
  def show
  end

 
  def new
    @teacher = Teacher.new
  end

 
  def edit
  end

 
  def create
    @teacher = Teacher.new(teacher_params)
     # flash[:notice] = "Your Result is successfully created."
    # redirect_to teacher_url

    respond_to do |format|
      if @teacher.save
        UsermailerMailer.email(@user).deliver_later
        format.html { redirect_to teacher_url(@teacher), notice: "Result was successfully created." }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to teacher_url(@teacher), notice: "Result was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to teachers_url, notice: "Result was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    
    def teacher_params
      params.require(:teacher).permit(:name, :group, :subject, :date_of_birth, :marks)
    end
end
