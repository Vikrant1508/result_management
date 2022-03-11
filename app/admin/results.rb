ActiveAdmin.register Result do
  permit_params :list, :of, :attributes, :on, :model, :id, :name, :last_name, :group, :subject, :date_of_birth, :marks
  
  # show do
  #   selectable_column
  #   id_column
  #   column :name
  #   column :last_name 
  #   column :group
  #   column :subject
  #   column :marks
  # end
  # form do |f|
  #   f.inputs do
  #     f.input :name
  #     f.input :last_name
  #     f.input :group
  #     f.input :subject
  #     f.input :marks
  #   end
  #   f.actions
  # end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :last_name, :group, :subject, :date_of_birth, :marks, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :last_name, :group, :subject, :date_of_birth, :marks, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
