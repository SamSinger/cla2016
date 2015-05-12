class IntsructionalAreaTypeChangeToString < ActiveRecord::Migration
  def change
    remove_column :people, :instructional_areas, :text
    add_column :people, :instructional_areas, :string
  end
end
