class TeachersController < ApplicationController
  before_action :authenticate_user!

  before_action :set_teacher, only: %i[ show edit update destroy ]

  caches_action  :public
  
  caches_action :index, :show
 
  def index
    @teachers = Teacher.all
    ActionCable.server.broadcast('notification_channel', 'Your Result is Successfully Created')
    # sleep 1
  end

 
  def show; end

 
  def new
    @teacher = Teacher.new
    sleep 1
  end

 
  def edit
  end

 
  def create
    @teacher = Teacher.new(teacher_params)
    sleep 0.5
     # flash[:notice] = "Your Result is successfully created."
    # redirect_to teacher_url

    respond_to do |format|
      if @teacher.save
       UserMailer.with(user: current_user,user: @user).post_created.deliver_later
        format.html { redirect_to teacher_url(@teacher), notice: "Result was successfully created." }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format| sleep 1
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
      sleep 1
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
    params.require(:teacher).permit(:name, :group, :subject, :date_of_birth, :marks, :user_id, :last_name)
  end
end
