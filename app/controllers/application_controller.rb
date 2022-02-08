class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	  # before_action :authenticate_user!

	# private

 #  def after_sign_in_path_for(resource)
 #    if current_user.teacher? 
 #    	redirect_to 'teachers_path'
  		
 #  	else
 #  		redirect_to 'students_path'
 #  	end
 #  end
end
