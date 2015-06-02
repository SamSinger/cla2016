class CreateAdvisingAreas < ActiveRecord::Migration
  def change
    create_table :advising_areas do |t|
      t.string :names_advised
      t.integer :person_id
      t.string :description
      t.timestamps
    end
  end
end
