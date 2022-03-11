ActiveAdmin.register Teacher do

  permit_params :list, :of, :attributes, :on, :model, :name, :last_name, :subject, :date_of_birth, :user_name
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :group, :subject, :date_of_birth, :marks, :user_id, :last_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :group, :subject, :date_of_birth, :marks, :user_id, :last_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
