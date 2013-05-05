class TipoOrganoDeGobiernosController < ApplicationController
  # GET /tipo_organo_de_gobiernos
  # GET /tipo_organo_de_gobiernos.json
  def index
    @tipo_organo_de_gobiernos = TipoOrganoDeGobierno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_organo_de_gobiernos }
    end
  end

  # GET /tipo_organo_de_gobiernos/1
  # GET /tipo_organo_de_gobiernos/1.json
  def show
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_organo_de_gobierno }
    end
  end

  # GET /tipo_organo_de_gobiernos/new
  # GET /tipo_organo_de_gobiernos/new.json
  def new
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_organo_de_gobierno }
    end
  end

  # GET /tipo_organo_de_gobiernos/1/edit
  def edit
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.find(params[:id])
  end

  # POST /tipo_organo_de_gobiernos
  # POST /tipo_organo_de_gobiernos.json
  def create
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.new(params[:tipo_organo_de_gobierno])

    respond_to do |format|
      if @tipo_organo_de_gobierno.save
        format.html { redirect_to @tipo_organo_de_gobierno, notice: 'Tipo organo de gobierno was successfully created.' }
        format.json { render json: @tipo_organo_de_gobierno, status: :created, location: @tipo_organo_de_gobierno }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_organo_de_gobierno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_organo_de_gobiernos/1
  # PUT /tipo_organo_de_gobiernos/1.json
  def update
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.find(params[:id])

    respond_to do |format|
      if @tipo_organo_de_gobierno.update_attributes(params[:tipo_organo_de_gobierno])
        format.html { redirect_to @tipo_organo_de_gobierno, notice: 'Tipo organo de gobierno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_organo_de_gobierno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_organo_de_gobiernos/1
  # DELETE /tipo_organo_de_gobiernos/1.json
  def destroy
    @tipo_organo_de_gobierno = TipoOrganoDeGobierno.find(params[:id])
    @tipo_organo_de_gobierno.destroy

    respond_to do |format|
      format.html { redirect_to tipo_organo_de_gobiernos_url }
      format.json { head :no_content }
    end
  end
end
