class ListaAcuerdosController < ApplicationController
  before_filter :set_sesion
  # GET /lista_acuerdos
  # GET /lista_acuerdos.json
  def index
    @lista_acuerdos = ListaAcuerdo.where(sesion_id: @sesion.id).all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lista_acuerdos }
    end
  end

  # GET /lista_acuerdos/1
  # GET /lista_acuerdos/1.json
  def show
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).find(params[:id])
    @lista_acuerdo.acuerdos.build
    @lista_acuerdo.avance =Acuerdo.where(lista_acuerdo_id: @lista_acuerdo.id).average("avance_acuerdo")
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lista_acuerdo }
    end
  end

  # GET /lista_acuerdos/new
  # GET /lista_acuerdos/new.json
  def new
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lista_acuerdo }
    end
  end

  # GET /lista_acuerdos/1/edit
  def edit
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).find(params[:id])
  end

  # POST /lista_acuerdos
  # POST /lista_acuerdos.json
  def create
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).new(params[:lista_acuerdo])

    respond_to do |format|
      if @lista_acuerdo.save
        format.html { redirect_to [@sesion, @lista_acuerdo], notice: 'Lista acuerdo was successfully created.' }
        format.json { render json: @lista_acuerdo, status: :created, location: [@sesion, @lista_acuerdo] }
      else
        format.html { render action: "new" }
        format.json { render json: @lista_acuerdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lista_acuerdos/1
  # PUT /lista_acuerdos/1.json
  def update
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).find(params[:id])

    respond_to do |format|
      if @lista_acuerdo.update_attributes(params[:lista_acuerdo])
        format.html { redirect_to [@sesion, @lista_acuerdo], notice: 'Lista acuerdo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lista_acuerdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_acuerdos/1
  # DELETE /lista_acuerdos/1.json
  def destroy
    @lista_acuerdo = ListaAcuerdo.where(sesion_id: @sesion.id).find(params[:id])
    @lista_acuerdo.destroy

    respond_to do |format|
      format.html { redirect_to sesion_lista_acuerdos_url(@sesion) }
      format.json { head :no_content }
    end
  end
  def set_sesion
    @sesion = Sesion.find(params[:sesion_id])
  end
  
end
