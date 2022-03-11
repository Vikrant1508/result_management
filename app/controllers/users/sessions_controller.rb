# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
   # before_action :configure_log_in_params, only: [:create, :new]

  # GET /resource/sign_in
  # def new
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
    devise_parameter_sanitizer.permit(:log_in, keys: %w[name])
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def after_sign_in_path_for(resource)
    if current_user.role == 'teacher'
      teachers_path
    else
      students_path
    end
  end
end
