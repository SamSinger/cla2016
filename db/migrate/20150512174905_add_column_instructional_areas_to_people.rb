class AddColumnInstructionalAreasToPeople < ActiveRecord::Migration
  def change
    add_column :people, :instructional_areas, :text
    remove_column :people, :role
    remove_column :people, :password_digest
  end
end
