class FieldtypesController < ApplicationController
  # GET /fieldtypes
  # GET /fieldtypes.json
  def index
    @fieldtypes = Fieldtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fieldtypes }
    end
  end

  # GET /fieldtypes/1
  # GET /fieldtypes/1.json
  def show
    @fieldtype = Fieldtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fieldtype }
    end
  end

  # GET /fieldtypes/new
  # GET /fieldtypes/new.json
  def new
    @fieldtype = Fieldtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fieldtype }
    end
  end

  # GET /fieldtypes/1/edit
  def edit
    @fieldtype = Fieldtype.find(params[:id])
  end

  # POST /fieldtypes
  # POST /fieldtypes.json
  def create
    @fieldtype = Fieldtype.new(params[:fieldtype])

    respond_to do |format|
      if @fieldtype.save
        format.html { redirect_to @fieldtype, notice: 'Fieldtype was successfully created.' }
        format.json { render json: @fieldtype, status: :created, location: @fieldtype }
      else
        format.html { render action: "new" }
        format.json { render json: @fieldtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fieldtypes/1
  # PUT /fieldtypes/1.json
  def update
    @fieldtype = Fieldtype.find(params[:id])

    respond_to do |format|
      if @fieldtype.update_attributes(params[:fieldtype])
        format.html { redirect_to @fieldtype, notice: 'Fieldtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fieldtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fieldtypes/1
  # DELETE /fieldtypes/1.json
  def destroy
    @fieldtype = Fieldtype.find(params[:id])
    @fieldtype.destroy

    respond_to do |format|
      format.html { redirect_to fieldtypes_url }
      format.json { head :no_content }
    end
  end
end
