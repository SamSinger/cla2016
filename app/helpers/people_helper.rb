module PeopleHelper
  def sortable(column, title = nil)
    title ||= column.titleize  # if not nil it skips the titilize method
    direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"  #ternary operator, if column is equal to params and direction is asc.  a one line conditional statement
    link_to title, :sort => column, :direction => direction
  end
end
