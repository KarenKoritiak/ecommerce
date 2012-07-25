class ProducttypesController < ApplicationController

  # GET /producttypes
  # GET /producttypes.json
  def index
    @producttypes = Producttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producttypes }
    end
  end

  # GET /producttypes/1
  # GET /producttypes/1.json
  def show
    @producttype = Producttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producttype }
    end
  end

  # GET /producttypes/new
  # GET /producttypes/new.json
  def new
    @producttype = Producttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producttype }
    end
  end

  # GET /producttypes/1/edit
  def edit
    @producttype = Producttype.find(params[:id])
  end

  # POST /producttypes
  # POST /producttypes.json
  def create
    @producttype = Producttype.new(params[:producttype])

    respond_to do |format|
      if @producttype.save
        format.html { redirect_to @producttype, notice: 'Producttype was successfully created.' }
        format.json { render json: @producttype, status: :created, location: @producttype }
      else
        format.html { render action: "new" }
        format.json { render json: @producttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producttypes/1
  # PUT /producttypes/1.json
  def update
    @producttype = Producttype.find(params[:id])

    respond_to do |format|
      if @producttype.update_attributes(params[:producttype])
        format.html { redirect_to @producttype, notice: 'Producttype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @producttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producttypes/1
  # DELETE /producttypes/1.json
  def destroy
    @producttype = Producttype.find(params[:id])
    @producttype.destroy

    respond_to do |format|
      format.html { redirect_to producttypes_url }
      format.json { head :no_content }
    end
  end
end
