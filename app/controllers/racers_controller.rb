class RacersController < ApplicationController
  # GET /racers
  # GET /racers.json
  def index
    @racers = Racer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @racers }
    end
  end

  # GET /racers/1
  # GET /racers/1.json
  def show
    @racer = Racer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @racer }
    end
  end

  # GET /racers/new
  # GET /racers/new.json
  def new
    @racer = Racer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @racer }
    end
  end

  # GET /racers/1/edit
  def edit
    @racer = Racer.find(params[:id])
  end

  # POST /racers
  # POST /racers.json
  def create
    @racer = Racer.new(params[:racer])

    respond_to do |format|
      if @racer.save
        format.html { redirect_to @racer, notice: 'Racer was successfully created.' }
        format.json { render json: @racer, status: :created, location: @racer }
      else
        format.html { render action: "new" }
        format.json { render json: @racer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /racers/1
  # PUT /racers/1.json
  def update
    @racer = Racer.find(params[:id])

    respond_to do |format|
      if @racer.update_attributes(params[:racer])
        format.html { redirect_to @racer, notice: 'Racer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @racer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racers/1
  # DELETE /racers/1.json
  def destroy
    @racer = Racer.find(params[:id])
    @racer.destroy

    respond_to do |format|
      format.html { redirect_to racers_url }
      format.json { head :no_content }
    end
  end
end
