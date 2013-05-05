class TipoEntidadesController < ApplicationController
  # GET /tipo_entidades
  # GET /tipo_entidades.json
  def index
    @tipo_entidades = TipoEntidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_entidades }
    end
  end

  # GET /tipo_entidades/1
  # GET /tipo_entidades/1.json
  def show
    @tipo_entidad = TipoEntidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_entidad }
    end
  end

  # GET /tipo_entidades/new
  # GET /tipo_entidades/new.json
  def new
    @tipo_entidad = TipoEntidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_entidad }
    end
  end

  # GET /tipo_entidades/1/edit
  def edit
    @tipo_entidad = TipoEntidad.find(params[:id])
  end

  # POST /tipo_entidades
  # POST /tipo_entidades.json
  def create
    @tipo_entidad = TipoEntidad.new(params[:tipo_entidad])

    respond_to do |format|
      if @tipo_entidad.save
        format.html { redirect_to @tipo_entidad, notice: 'Tipo entidad was successfully created.' }
        format.json { render json: @tipo_entidad, status: :created, location: @tipo_entidad }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_entidades/1
  # PUT /tipo_entidades/1.json
  def update
    @tipo_entidad = TipoEntidad.find(params[:id])

    respond_to do |format|
      if @tipo_entidad.update_attributes(params[:tipo_entidad])
        format.html { redirect_to @tipo_entidad, notice: 'Tipo entidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_entidades/1
  # DELETE /tipo_entidades/1.json
  def destroy
    @tipo_entidad = TipoEntidad.find(params[:id])
    @tipo_entidad.destroy

    respond_to do |format|
      format.html { redirect_to tipo_entidades_url }
      format.json { head :no_content }
    end
  end
end
