class TeachersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_teacher, only: %i[show edit update destroy]
  caches_action  :public
  caches_action :index, :show
 
  def index
    @teachers = Teacher.all
    @my_students = current_user.teachers
    # ActionCable.server.broadcast('notification_channel', 'Your Result is Successfully Created')
  end
 
  def show; end

  def search
    if params[:search].blank?
      redirect_to(teachers_path, alert: "Enter Valid Name!") and return
    else
       # keyword = params[:search]
       @teachers = Teacher.where(["name LIKE ?", "%#{params[:search]}%" ])
       # @teachers = Teacher.where("name LIKE ?", params[:search])
    end
  end
 
  def new
    @teacher = Teacher.new
  end

 
  def edit; end

 
  def create
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
       UserMailer.with(user: current_user,user: @user).post_created.deliver_later
        format.html { redirect_to teacher_url(@teacher), notice: "profile was successfully created." }
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
        format.html { redirect_to teacher_url(@teacher), notice: "Profile was successfully updated." }
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
      format.html { redirect_to teachers_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  protected

  def user_cache_path
    if params[:user_id]
      user_list_url(params[:user_id], params[:id])
    else
      list_url(params[:id])
    end
  end

  private
    
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
  
  def teacher_params
    params.require(:teacher).permit(:name, :group, :subject, :date_of_birth, :contact_no, 
                                    :marks, :user_id, :last_name, :search)
  end
end
