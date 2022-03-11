ActiveAdmin.register User do
  permit_params :list, :of, :attributes, :on, :model, :name, :email, :date_of_birth, :last_name 

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :date_of_birth, :group, :marks, :role, :admin, :last_name, :subject, :user_id, :contact_no
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :date_of_birth, :group, :marks, :role, :admin, :last_name, :subject, :user_id, :contact_no]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
