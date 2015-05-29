ActiveAdmin.register Fall2015Course do

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
permit_params :id, :section, :crs, :hours, :course_title, :days, :start_time, :instructor, :au_user_name, :course_desc, :readings, :requirements, :subtitle 

end
