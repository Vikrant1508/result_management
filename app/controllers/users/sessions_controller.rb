# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
   before_action :configure_log_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  def configure_log_in_params
    devise_parameter_sanitizer.permit(:log_in, keys: %w[role])
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def after_log_in_path_for(resource)
    if current_user.role == 'teacher'
      teachers_index_path
    else
      students_index_path
    end
  end
end
