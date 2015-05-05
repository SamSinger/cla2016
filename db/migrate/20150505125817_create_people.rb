class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :office_address
      t.string :phone
      t.string :rank_description
      t.text :interest_areas
      t.integer :department_id
      t.integer :category_id
      t.string :au_user_name
      t.string :password_digest
      t.string :role
      t.string :monday_hours
      t.string :tuesday_hours
      t.string :wednesday_hours
      t.string :thursday_hours
      t.string :friday_hours

      t.timestamps
    end
  end
end
