class SearchController < ApplicationController
  def index
    @people = Person.text_search(params[:query])
  end
end
