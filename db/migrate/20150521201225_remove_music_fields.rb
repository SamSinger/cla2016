class RemoveMusicFields < ActiveRecord::Migration
  def change
    remove_column :people, :instrument_description, :string
    remove_column :people, :instrument_group, :string
    remove_column :people, :primary_responsibility, :string
    remove_column :people, :academic, :string
    remove_column :people, :ensemble, :string
  end
end
