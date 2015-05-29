class CreateFall2015Courses < ActiveRecord::Migration
  def change
    create_table :fall2015_courses do |t|
      t.string :section
      t.string :crs
      t.string :hours
      t.string :course_title
      t.string :days
      t.string :start_time
      t.string :instructor
      t.string :au_user_name
      t.text :course_desc
      t.text :readings
      t.text :requirements
      t.string :subtitle
      t.timestamps
    end
  end
end
