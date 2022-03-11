class ResultsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_result, only: %i[show edit update destroy]
  caches_action :public
  caches_action :index, :show
 
  def index
    @results = Result.all
    ActionCable.server.broadcast('notification_channel', 'Your Result is Successfully Created')
  end

 
  def show
  	@result = Result.find(params[:id])
  end

  def search
    if params[:search].blank?
      redirect_to(result_path, alert: "Enter Valid Name!") and return
    else
       @result = Result.where(["name LIKE ?", "%#{params[:search]}%" ])
    end
  end
 
  def new
    @result = Result.new
    @subject = Subject.new
  end

 
  def edit
  	@result = Result.find(params[:id])
  end

 
  def create
    @result = Result.new(result_params)
    @subject = Subject.new

    respond_to do |format|
      if @result.save
        UserMailer.with(user: current_user,user: @user).post_created.deliver_later
        format.html { redirect_to result_url(@result), notice: "Result was successfully created." }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format| 
      if @result.update(result_params)
        format.html { redirect_to result_url(@result), notice: "Result was successfully updated." }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @result.destroy 

    respond_to do |format|
      format.html { redirect_to results_url, notice: "Result was successfully destroyed." }
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
    
  def set_result 
    @result = Result.find(params[:id])
    # @subject = Subject.find(params[:id])
  end
  
  def result_params
    params.require(:result).permit(:name, :group, :subject, :date_of_birth, 
                                    :marks, :user_id, :last_name, :search,)
  end
end
