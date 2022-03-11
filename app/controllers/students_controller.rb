class StudentsController < ApplicationController
    # before_action :authenticate_user!
    before_action :set_student, only: [ :show, :edit, :update ]

  def index
    @students = Student.all
    # @my_students = current_user.students
  end

  def show
     @students = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student profile was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to student_url(@student), notice: "Student profile was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def set_student
      @student = Student.find(params[:id])
    end

    
    def student_params
      params.require(:student).permit(:name,:last_name,:group,:date_of_birth,:contact_no)
    end
end
