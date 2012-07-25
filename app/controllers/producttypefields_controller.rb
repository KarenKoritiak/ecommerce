class ProducttypefieldsController < ApplicationController
  # GET /producttypefields
  # GET /producttypefields.json
  def index
    @producttypefields = Producttypefield.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producttypefields }
    end
  end

  # GET /producttypefields/1
  # GET /producttypefields/1.json
  def show
    @producttypefield = Producttypefield.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producttypefield }
    end
  end

  # GET /producttypefields/new
  # GET /producttypefields/new.json
  def new
    @producttypefield = Producttypefield.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producttypefield }
    end
  end

  # GET /producttypefields/1/edit
  def edit
    @producttypefield = Producttypefield.find(params[:id])
  end

  # POST /producttypefields
  # POST /producttypefields.json
  def create
    @producttypefield = Producttypefield.new(params[:producttypefield])

    respond_to do |format|
      if @producttypefield.save
        format.html { redirect_to @producttypefield, notice: 'Producttypefield was successfully created.' }
        format.json { render json: @producttypefield, status: :created, location: @producttypefield }
      else
        format.html { render action: "new" }
        format.json { render json: @producttypefield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producttypefields/1
  # PUT /producttypefields/1.json
  def update
    @producttypefield = Producttypefield.find(params[:id])

    respond_to do |format|
      if @producttypefield.update_attributes(params[:producttypefield])
        format.html { redirect_to @producttypefield, notice: 'Producttypefield was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @producttypefield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producttypefields/1
  # DELETE /producttypefields/1.json
  def destroy
    @producttypefield = Producttypefield.find(params[:id])
    @producttypefield.destroy

    respond_to do |format|
      format.html { redirect_to producttypefields_url }
      format.json { head :no_content }
    end
  end
end
