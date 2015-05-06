class Person < ActiveRecord::Base

  validates_presence_of :first_name, :last_name

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Person.create!(row.to_hash)
    end
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |person|
        csv << person.attributes.values_at(*column_names)
      end
    end
  end

  def self.text_search(query)
    if query.present?
      where("last_name @@ :q or first_name @@ :q", q: query)
    else
      scoped
    end
  end

end
