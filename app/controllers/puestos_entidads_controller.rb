class PuestosEntidadsController < ApplicationController
  # GET /puestos_entidads
  # GET /puestos_entidads.json
  def index
    @puestos_entidads = PuestosEntidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puestos_entidads }
    end
  end

  # GET /puestos_entidads/1
  # GET /puestos_entidads/1.json
  def show
    @puestos_entidad = PuestosEntidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puestos_entidad }
    end
  end

  # GET /puestos_entidads/new
  # GET /puestos_entidads/new.json
  def new
    @puestos_entidad = PuestosEntidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puestos_entidad }
    end
  end

  # GET /puestos_entidads/1/edit
  def edit
    @puestos_entidad = PuestosEntidad.find(params[:id])
  end

  # POST /puestos_entidads
  # POST /puestos_entidads.json
  def create
    @puestos_entidad = PuestosEntidad.new(params[:puestos_entidad])

    respond_to do |format|
      if @puestos_entidad.save
        format.html { redirect_to @puestos_entidad, notice: 'Puestos entidad was successfully created.' }
        format.json { render json: @puestos_entidad, status: :created, location: @puestos_entidad }
      else
        format.html { render action: "new" }
        format.json { render json: @puestos_entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puestos_entidads/1
  # PUT /puestos_entidads/1.json
  def update
    @puestos_entidad = PuestosEntidad.find(params[:id])

    respond_to do |format|
      if @puestos_entidad.update_attributes(params[:puestos_entidad])
        format.html { redirect_to @puestos_entidad, notice: 'Puestos entidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @puestos_entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puestos_entidads/1
  # DELETE /puestos_entidads/1.json
  def destroy
    @puestos_entidad = PuestosEntidad.find(params[:id])
    @puestos_entidad.destroy

    respond_to do |format|
      format.html { redirect_to puestos_entidads_url }
      format.json { head :no_content }
    end
  end
end
