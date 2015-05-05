json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :middle_name, :last_name, :email, :office_address, :phone, :rank_description, :interest_areas, :department_id, :category_id, :au_user_name, :password_digest, :role, :monday_hours, :tuesday_hours, :wednesday_hours, :thursday_hours, :friday_hours
  json.url person_url(person, format: :json)
end
