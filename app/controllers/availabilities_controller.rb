class AvailabilitiesController < ApplicationController
  # GET /availabilities
  # GET /availabilities.json
  def index
    @availabilities = Availability.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availabilities }
    end
  end

  # GET /availabilities/1
  # GET /availabilities/1.json
  def show
    @availability = Availability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @availability }
    end
  end

  def today
    @availabilities = Availability.where("expires_on >= ? and expires_on <= ?", Date.today, Date.tomorrow).order("created_at DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availabilities }
    end
      
  end
  

  # GET /availabilities/new
  # GET /availabilities/new.json
  def new
    @availability = Availability.new
    @dish = Dish.find(params[:dish_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @availability }
    end
  end

  # GET /availabilities/1/edit
  def edit
    @availability = Availability.find(params[:id])
  end

  # POST /availabilities
  # POST /availabilities.json
  def create
    @availability = Availability.new(params[:availability])
    @availability.dish = Dish.find(params[:dish_id])
    
    @availability.remaining_amount = @availability.initial_amount
    @availability.expires_on = Date.today
    @availability.starts_on = Date.today

    respond_to do |format|
      if @availability.save
        format.html { redirect_to @availability.dish.chef, notice: 'Awesom.Go feed them!!!.' }
        format.json { render json: @availability, status: :created, location: @availability }
      else
        format.html { render action: "new" }
        format.json { render json: @availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /availabilities/1
  # PUT /availabilities/1.json
  def update
    @availability = Availability.find(params[:id])

    respond_to do |format|
      if @availability.update_attributes(params[:availability])
        format.html { redirect_to @availability, notice: 'Availability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /day/2013-04-05.json
  def day

    
  end
  

  # DELETE /availabilities/1
  # DELETE /availabilities/1.json
  def destroy
    @availability = Availability.find(params[:id])
    @availability.destroy

    respond_to do |format|
      format.html { redirect_to availabilities_url }
      format.json { head :no_content }
    end
  end
end
