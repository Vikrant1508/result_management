ActiveAdmin.register Student do
  permit_params :list, :of, :attributes, :on, :model, :name, :last_name, :group, :date_of_birth, :contact_no
  # show do
  #   column :name
  #   column :last_name
  #   column :group
  # end

  # form do |f|
  #   f.inputs do
  #     f.input :marks
  #     f.input :password
  #     f.input :password_confirmation
  #   end
  #   f.actions
  # end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :last_name, :group, :date_of_birth, :contact_no
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :last_name, :group, :date_of_birth, :contact_no]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
