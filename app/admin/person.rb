ActiveAdmin.register Person do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :first_name, :middle_name, :last_name, :email, :office_address, :phone, :rank_description, :interest_areas, :department_id, :category_id, :au_user_name, :role, :monday_hours, :tuesday_hours, :wednesday_hours, :thursday_hours, :friday_hours

end
