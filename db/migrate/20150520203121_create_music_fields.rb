class CreateMusicFields < ActiveRecord::Migration
  def change
    add_column :people, :instrument_description, :string
    add_column :people, :instrument_group, :string
    add_column :people, :primary_responsibility, :string
    add_column :people, :academic, :string
    add_column :people, :ensemble, :string
    
  end
end
