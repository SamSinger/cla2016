class PersonSearch
  attr_reader :date_from, :date_to

  def initialize(params)
    params ||= {} # if no params are received, params are set to empty hash
    @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s)
    @date_to = parsed_date(params[:date_to], Date.tomorrow.to_s) #Date.today.to_s
  end

  def scope
    Person.where('updated_at BETWEEN ? AND ?', @date_from, @date_to)
  end

  private

  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end
end