class SesionsController < ApplicationController
    before_filter :set_entidad
  # GET /sesions
  # GET /sesions.json
  def index
    @sesions = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).all
    @suplente = Suplente.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sesions }
    end
  end

  # GET /sesions/1
  # GET /sesions/1.json
  def show
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).find(params[:id])

    #@emails = Email.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sesion }
    end
  end

  # GET /sesions/new
  # GET /sesions/new.json
  def new
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).new
    #@sesion.suplente = Suplente.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sesion }
    end
  end

  # GET /sesions/1/edit
  def edit
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).find(params[:id])
  end

  # POST /sesions
  # POST /sesions.json
  def create
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).new(params[:sesion])

    respond_to do |format|
      if @sesion.save
        format.html { redirect_to [@entidad_paraestatal,@sesion], notice: 'Sesion was successfully created.' }
        format.json { render json: @sesion, status: :created, location:  [@entidad_paraestatal,@sesion] }
      else
        format.html { render action: "new" }
        format.json { render json: @sesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sesions/1
  # PUT /sesions/1.json
  def update
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).find(params[:id])

    respond_to do |format|
      if @sesion.update_attributes(params[:sesion])
        format.html { redirect_to [@entidad_paraestatal,@sesion], notice: 'Sesion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sesions/1
  # DELETE /sesions/1.json
  def destroy
    @sesion = Sesion.where(entidad_paraestatal_id: @entidad_paraestatal.id).find(params[:id])
    @sesion.destroy

    respond_to do |format|
      format.html { redirect_to entidad_paraestatal_sesions_url(@entidad_paraestatal) }
      format.json { head :no_content }
    end
  end
 def set_entidad
    @entidad_paraestatal= EntidadParaestatal.find(params[:entidad_paraestatal_id])
  end 
end
