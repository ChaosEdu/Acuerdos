class AcuerdosController < ApplicationController
before_filter :set_lista_acuerdos
  # GET /acuerdos
  # GET /acuerdos.json
  def index
    @acuerdos = Acuerdo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acuerdos }
    end
  end

  # GET /acuerdos/1
  # GET /acuerdos/1.json
  def show
    @acuerdo = Acuerdo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acuerdo }
    end
  end

  # GET /acuerdos/new
  # GET /acuerdos/new.json
  def new
    @acuerdo = Acuerdo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acuerdo }
    end
  end

  # GET /acuerdos/1/edit
  def edit
    @acuerdo = Acuerdo.find(params[:id])
 
  end

  # POST /acuerdos
  # POST /acuerdos.json
  def create
    @acuerdo = Acuerdo.new(params[:acuerdo])

    respond_to do |format|
      if @acuerdo.save
        format.html { redirect_to @acuerdo, notice: 'Acuerdo was successfully created.' }
        format.json { render json: @acuerdo, status: :created, location: @acuerdo }
      else
        format.html { render action: "new" }
        format.json { render json: @acuerdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acuerdos/1
  # PUT /acuerdos/1.json
  def update
    @acuerdo = Acuerdo.find(params[:id])

    respond_to do |format|
      if @acuerdo.update_attributes(params[:acuerdo])
        format.html { redirect_to @acuerdo, notice: 'Acuerdo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acuerdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acuerdos/1
  # DELETE /acuerdos/1.json
  def destroy
    @acuerdo = Acuerdo.find(params[:id])
    @acuerdo.destroy

    respond_to do |format|
      format.html { redirect_to acuerdos_url }
      format.json { head :no_content }
    end
  end
   def set_lista_acuerdos
    @lista_acuerdo = ListaAcuerdo.find(params[:lista_acuerdos_id])
  end


end
