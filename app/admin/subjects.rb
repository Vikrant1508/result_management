ActiveAdmin.register Subject do
  permit_params :list, :of, :attributes, :on, :model, :english, :Hindi, :Science, :maths, :social_science

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :english, :Hindi, :Science, :social_science, :maths
  #
  # or
  #
  # permit_params do
  #   permitted = [:english, :Hindi, :Science, :social_science, :maths]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
