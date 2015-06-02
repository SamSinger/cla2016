class AddDetailsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :names_advised, :string
    add_column :people, :area_advised, :string
  end
end
