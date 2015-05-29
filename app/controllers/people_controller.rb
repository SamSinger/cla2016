class PeopleController < ApplicationController

  # before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /people
  # GET /people.json
  def index
    @search = PersonSearch.new(params[:search])
    @people = @search.scope.order(sort_column + ' ' + sort_direction)
    
    respond_to do |format|
      format.html 
      format.csv { render text: @people.to_csv }
      format.json { render json: @people }
    end
  end

  def import
    Person.import(params[:file])
    redirect_to people_url, notice: "People imported"
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit  
    @person = Person.find_by email: "#{current_user.email}"
     
      
    # rescue => e
    # flash[:error] = "This email address is not in our system. Please contact Sam Singer at singess@auburn.edu ."
    #binding.pry
    #@person = Person.find(51)   
     
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      flash[:notice]="Person updated successfully."
      redirect_to person_path
    else
      render('edit')
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  # def update
  #   respond_to do |format|
  #     if @person.update(person_params)
  #      format.html { redirect_to @person, notice: 'Person was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @person }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @person.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name, :email, :office_address, :phone, :rank_description, :interest_areas, :department_id, :category_id, :au_user_name, :instructional_areas, :monday_hours, :tuesday_hours, :wednesday_hours, :thursday_hours, :friday_hours)
    end

    def sort_column
      params[:sort] || "last_name"
    end

    def sort_direction
      params[:direction] || "asc"
    end

end
