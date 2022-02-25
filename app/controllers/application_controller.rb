class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	# before_action :check_admin, only: [:edit, :create]
	# def check_admin
 #    	unless current_user.user
 #        	redirect_to '/', :alert => "Don't have permission!"
 #    	end
 #  	end
	  # before_action :authenticate_user!

# private

#  def after_sign_up_path_for(resource)
#     if current_user.role == 'teachers'
#       teachers_index_path
#     else
#       students_index_path
#     end
#   end
end
