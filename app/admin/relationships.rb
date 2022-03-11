ActiveAdmin.register Relationship do
  permit_params :list, :of, :attributes, :on, :model, :student_id, :teacher_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :teacher_id, :student_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:teacher_id, :student_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
